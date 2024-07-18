Rails.configuration.to_prepare do
  ActiveStorage::Transformers::ImageProcessingTransformer.prepend GemExtensions::ActiveStorage::Transformers::ImageProcessingTransformer
end
