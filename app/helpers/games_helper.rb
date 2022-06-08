module GamesHelper
  def games
    @articles ||= Spina::Resource.find_by(name: "games").pages.live
  end
end
