# -*- coding: utf-8 -*-

module ActionView
  module Helpers
    module FormHelper
      def need_label(object_name, object, method, content_or_options = nil, options = nil, &block)
        need = true
        if content_or_options.class == Hash && content_or_options[:need_label] == false
          need = false
          content_or_options.delete(:need_label)
          content_or_options = nil if content_or_options == {}
        end
        need = false if options.class == Hash && options[:need_label] == false

        return_validator = proc do |v, obj|
          is_nil      = -> (o) { o.nil? }
          is_proc     = -> (o) { o.is_a?(Proc) }
          is_symbolic = -> (o) { o.is_a?(String) || o.is_a?(Symbol) }

          case v.options[:if]
          when is_nil
            v
          when is_proc
            v if obj.instance_eval(&v.options[:if])
          when is_symbolic
            v if obj.instance_eval(&eval("proc{#{v.options[:if]}}"))
          end
        end

        if need && object.present? && object.class.respond_to?(:validators)
          need_attributes = []
          object.class.validators.each do |validator|
            next unless validator.is_a?(ActiveModel::Validations::PresenceValidator)
            need_attributes.push(return_validator.call(validator, object))
          end
          need_attributes.map!{|e| e.attributes[0]}
          if need_attributes.index(method.to_sym)
            if content_or_options.present? && content_or_options.class == Hash && content_or_options[:class].present?
              content_or_options[:class] = content_or_options[:class] + ' need-label'
            else
              options[:class] = 'need-label'
            end
          end
        end
        label(object_name, method, content_or_options, options, &block)
      end
    end

    class FormBuilder
      def label(method, text = nil, options = {}, &block)
        if @object_name.class == Symbol
          @object = @template.instance_variable_get("@#{@object_name}")
        end
        @template.need_label(@object_name, @object, method, text, objectify_options(options), &block)
      end
    end
  end
end
