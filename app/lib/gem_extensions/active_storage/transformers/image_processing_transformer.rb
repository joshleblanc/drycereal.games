module GemExtensions
  module ActiveStorage
    module Transformers
      module ImageProcessingTransformer
        def process(file, format:)
          processor.
            source(file).
            loader(page: 0).
            convert(format).
            convert(reformat(format)).
            apply(operations).
            call
        end

        def reformat(format)
          return format unless Rails.application.config.active_storage.variant_processor == :vips

          { "jfif" => "jpg" }.fetch(format, format)
        end
      end
    end
  end
end
