require 'spec_helper'

describe "spree/admins/new" do
  before(:each) do
    assign(:spree_admin, stub_model(Spree::Admin::Supplier,
      :name => "MyString",
      :title => "MyString",
      :phone => "MyString",
      :fax => "MyString",
      :email => "MyString",
      :website => "MyString",
      :notes => "MyText",
      :twitter => "MyString",
      :facebook => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new spree_admin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => spree_admin_suppliers_path, :method => "post" do
      assert_select "input#spree_admin_name", :name => "spree_admin[name]"
      assert_select "input#spree_admin_title", :name => "spree_admin[title]"
      assert_select "input#spree_admin_phone", :name => "spree_admin[phone]"
      assert_select "input#spree_admin_fax", :name => "spree_admin[fax]"
      assert_select "input#spree_admin_email", :name => "spree_admin[email]"
      assert_select "input#spree_admin_website", :name => "spree_admin[website]"
      assert_select "textarea#spree_admin_notes", :name => "spree_admin[notes]"
      assert_select "input#spree_admin_twitter", :name => "spree_admin[twitter]"
      assert_select "input#spree_admin_facebook", :name => "spree_admin[facebook]"
      assert_select "textarea#spree_admin_description", :name => "spree_admin[description]"
    end
  end
end
