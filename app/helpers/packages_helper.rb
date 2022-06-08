module PackagesHelper
  def packages
    @packages ||= Spina::Resource.find_by(name: "packages").pages.live
  end
end