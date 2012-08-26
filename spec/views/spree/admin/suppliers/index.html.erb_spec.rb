require 'spec_helper'

describe "spree/admins/index" do
  before(:each) do
    assign(:spree_admin_suppliers, [
      stub_model(Spree::Admin::Supplier,
        :name => "Name",
        :title => "Title",
        :phone => "Phone",
        :fax => "Fax",
        :email => "Email",
        :website => "Website",
        :notes => "MyText",
        :twitter => "Twitter",
        :facebook => "Facebook",
        :description => "MyText"
      ),
      stub_model(Spree::Admin::Supplier,
        :name => "Name",
        :title => "Title",
        :phone => "Phone",
        :fax => "Fax",
        :email => "Email",
        :website => "Website",
        :notes => "MyText",
        :twitter => "Twitter",
        :facebook => "Facebook",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of spree/admins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
