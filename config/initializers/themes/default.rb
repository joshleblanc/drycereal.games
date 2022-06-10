# Theme configuration file
# ========================
# This file is used for all theme configuration.
# It's where you define everything that's editable in Spina CMS.



Spina::Theme.register do |theme|
  # All views are namespaced based on the theme's name
  theme.name = 'default'
  theme.title = 'Default theme'
  
  # Parts 
  # Define all editable parts you want to use in your view templates
  # 
  # Built-in part types:
  # - Line
  # - MultiLine
  # - Text (Rich text editor)
  # - Image
  # - ImageCollection
  # - Attachment
  # - Option
  # - Repeater
  theme.parts = [
    {name: 'footer',  title: "Footer", hint: "Your footer content", part_type: "Spina::Parts::Text"},
    {name: 'body',  title: "Body", hint: "Your main content", part_type: "Spina::Parts::Text"},
    {name: "headline", title: "Headline", part_type: "Spina::Parts::Line" },
    {name: "supporting_images", title: "Supporting Images", hint: "Smaller images that accentuate the content", part_type: "Spina::Parts::ImageCollection" },
    {name: "hero_image", title: "Hero Image", hint: "The main image", part_type: "Spina::Parts::Image" },
    {name: "cover_image", title: "Cover Image", hint: "The cover image to show on the index page", part_type: "Spina::Parts::Image"},
    {name: "play_link", title: "Play Link", hint: "The link to the crayta website", part_type: "Spina::Parts::Line"},
  ]
  
  # View templates
  # Every page has a view template stored in app/views/my_theme/pages/*
  # You define which parts you want to enable for every view template
  # by referencing them from the theme.parts configuration above.
  theme.view_templates = [
    {name: 'homepage', title: 'Homepage', parts: %w(body headline hero_image)},
    {name: "games", title: "Games", parts: %w(headline body hero_image) },
    {name: "game", title: "Game", parts: %w(body supporting_images hero_image cover_image play_link) },
    {name: "packages", title: "Packages", parts: %w(headline body hero_image) },
    {name: "package", title: "Package", parts: %w(body headline hero_image) }
  ]
  
  # Custom pages
  # Some pages should not be created by the user, but generated automatically.
  # By naming them you can reference them in your code.
  theme.custom_pages = [
    {name: 'homepage', title: "Homepage", deletable: false, view_template: "homepage"},
    {name: "games", title: "Games", deletable: false, view_template: "games" },
    {name: "packages", title: "Packages", deletable: false, view_template: "packages"}
  ]
  
  # Navigations (optional)
  # If your project has multiple navigations, it can be useful to configure multiple
  # navigations.
  theme.navigations = [
    {name: 'main', label: 'Main navigation'}
  ]
  
  # Layout parts (optional)
  # You can create global content that doesn't belong to one specific page. We call these layout parts.
  # You only have to reference the name of the parts you want to have here.
  theme.layout_parts = %w()
  
  # Resources (optional)
  # Think of resources as a collection of pages. They are managed separately in Spina
  # allowing you to separate these pages from the 'main' collection of pages.
  theme.resources = [
    { name: "games", label: "Games", view_template: "game", slug: "games" },
    { name: "packages", label: "Packages", view_template: "package", slug: "packages" }
  ]
  
  # Plugins (optional)
  theme.plugins = []
  
  # Embeds (optional)
  theme.embeds = []
end
