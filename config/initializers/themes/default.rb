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
    {name: 'text',  title: "Body", hint: "Your main content", part_type: "Spina::Parts::Text"},
    {name: "hero_image_1", title: "Hero Image 1", hint: "Primary hero image to show in the background", part_type: "Spina::Parts::Image"},
    {name: "hero_image_2", title: "Hero Image 2", hint: "Secondary hero image to show in the background", part_type: "Spina::Parts::Image"},
    {name: "hero_image_3", title: "Hero Image 3", hint: "Secondary hero image to show in the background", part_type: "Spina::Parts::Image"},
  ]
  
  # View templates
  # Every page has a view template stored in app/views/my_theme/pages/*
  # You define which parts you want to enable for every view template
  # by referencing them from the theme.parts configuration above.
  theme.view_templates = [
    {name: 'homepage', title: 'Homepage', parts: %w(text hero_image_1 hero_image_2 hero_image_3)},
    {name: 'show', title: 'Page', parts: %w(text) },
    {name: "index", title: "Index", parts: %w(text) },
    {name: "game", title: "Game", parts: %w(text) }
  ]
  
  # Custom pages
  # Some pages should not be created by the user, but generated automatically.
  # By naming them you can reference them in your code.
  theme.custom_pages = [
    {name: 'homepage', title: "Homepage", deletable: false, view_template: "homepage"},
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
  theme.layout_parts = []
  
  # Resources (optional)
  # Think of resources as a collection of pages. They are managed separately in Spina
  # allowing you to separate these pages from the 'main' collection of pages.
  theme.resources = [
    { name: "games", label: "Games", view_template: "game" },
    { name: "packages", label: "Packages", view_template: "show" }
  ]
  
  # Plugins (optional)
  theme.plugins = []
  
  # Embeds (optional)
  theme.embeds = []
end
