Deface::Override.new(
  :virtual_path => 'spree/shared/_nav_bar',
  :name => 'set_nav_bar_class',
  :set_attributes => "#nav-bar",
  :attributes => {
    :class => "userMenu"
  })


Deface::Override.new(
  :virtual_path => 'spree/shared/_sidebar',
  :name => 'set_sidebar_class',
  :set_attributes => "#sidebar",
  :attributes => {
    :class => "col-lg-3 col-md-3 col-sm-12"
  })


Deface::Override.new(
  :virtual_path => 'spree/layouts/spree_application',
  :name => 'set_application_content_class',
  :set_attributes => "#content",
  :attributes => {
    :class => "col-lg-9"
  })


Deface::Override.new(
  :virtual_path => 'spree/shared/_taxonomies',
  :name => 'set_category_heading_class',
  :set_attributes => "h4",
  :attributes => {
    :class => "panel-heading"
  })


Deface::Override.new(
  :virtual_path => 'spree/shared/_products',
  :name => 'surround_products_item_content',
  :surround_contents => ".product-image",
  :text => '<div class="image"><%= render_original %></div>')


Deface::Override.new(
  :virtual_path => 'spree/shared/_products',
  :name => 'set_products_item_image_class',
  :set_attributes => ".product-image",
  :attributes => {
    :class => "product"
  },
  :sequence => {
    :after => "surround_products_item_content"
  })


Deface::Override.new(
  :virtual_path => 'spree/shared/_products',
  :name => 'set_products_item_class',
  :set_attributes => "#products li",
  :attributes => {
    :class => "item col-sm-4 col-lg-4 col-md-4 col-xs-6"
  })


=begin
Deface::Override.new(
  :virtual_path => 'spree/shared/_products',
  :name => 'change_large_products_item_thumbnail_size',
  :replace => ".product-image",
  :text => '<%= link_to small_image(product, :itemprop => "image"), url, :itemprop => "url" %>')
=end
