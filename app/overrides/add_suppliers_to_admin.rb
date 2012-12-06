Deface::Override.new(
  :name => "add_suppliers_to_admin",
  :virtual_path => "spree/layouts/admin",
  :insert_bottom => "[data-hook='admin_tabs']",
  :text => "<%= tab :suppliers, :label => 'Proveedores', :icon => 'icon-user-md' %>"
)
