require 'spec_helper'

describe "pages/index" do
  before(:each) do
    assign(:pages, [
      stub_model(Page,
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
      ),
      stub_model(Page,
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
      )
    ])
  end

  it "renders a list of pages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "View Template".to_s, :count => 2
    assert_select "tr>td", :text => "Layout Template".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    assert_select "tr>td", :text => "Link Url".to_s, :count => 2
    assert_select "tr>td", :text => "Path".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
