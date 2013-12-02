require 'spec_helper'

describe "pages/show" do
  before(:each) do
    @page = assign(:page, stub_model(Page,
      :title => "Title",
      :seo => "MyText",
      :body => "MyText",
      :view_template => "View Template",
      :layout_template => "Layout Template",
      :slug => "Slug",
      :link_url => "Link Url",
      :path => "Path",
      :visible => false,
      :deleted => false,
      :deletable => false,
      :draft => false,
      :position => 1,
      :parent_id => 2,
      :lft => 3,
      :rgt => 4,
      :depth => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/View Template/)
    rendered.should match(/Layout Template/)
    rendered.should match(/Slug/)
    rendered.should match(/Link Url/)
    rendered.should match(/Path/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
  end
end
