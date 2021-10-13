# frozen_string_literal: true

module Grape
  class Entity
    module Exposure
      class DelegatorExposure < Base
        def value(entity, _options)
          entity.delegate_attribute(attribute)
        end

        def to_params
          documentation = self.documentation || {}
          { key => documentation }
        end
      end
    end
  end
end
