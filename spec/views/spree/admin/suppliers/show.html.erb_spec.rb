require 'spec_helper'

describe "spree/admins/show" do
  before(:each) do
    @spree_admin = assign(:spree_admin, stub_model(Spree::Admin::Supplier,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Title/)
    rendered.should match(/Phone/)
    rendered.should match(/Fax/)
    rendered.should match(/Email/)
    rendered.should match(/Website/)
    rendered.should match(/MyText/)
    rendered.should match(/Twitter/)
    rendered.should match(/Facebook/)
    rendered.should match(/MyText/)
  end
end
