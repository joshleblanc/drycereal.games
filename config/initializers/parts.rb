Rails.application.reloader.to_prepare do
  Spina::Part.register(Spina::Parts::Game)
end