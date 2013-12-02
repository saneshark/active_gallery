require 'spec_helper'

describe "pages/new" do
  before(:each) do
    assign(:page, stub_model(Page,
      :title => "MyString",
      :seo => "MyText",
      :body => "MyText",
      :view_template => "MyString",
      :layout_template => "MyString",
      :slug => "MyString",
      :link_url => "MyString",
      :path => "MyString",
      :visible => false,
      :deleted => false,
      :deletable => false,
      :draft => false,
      :position => 1,
      :parent_id => 1,
      :lft => 1,
      :rgt => 1,
      :depth => 1
    ).as_new_record)
  end

  it "renders new page form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pages_path, "post" do
      assert_select "input#page_title[name=?]", "page[title]"
      assert_select "textarea#page_seo[name=?]", "page[seo]"
      assert_select "textarea#page_body[name=?]", "page[body]"
      assert_select "input#page_view_template[name=?]", "page[view_template]"
      assert_select "input#page_layout_template[name=?]", "page[layout_template]"
      assert_select "input#page_slug[name=?]", "page[slug]"
      assert_select "input#page_link_url[name=?]", "page[link_url]"
      assert_select "input#page_path[name=?]", "page[path]"
      assert_select "input#page_visible[name=?]", "page[visible]"
      assert_select "input#page_deleted[name=?]", "page[deleted]"
      assert_select "input#page_deletable[name=?]", "page[deletable]"
      assert_select "input#page_draft[name=?]", "page[draft]"
      assert_select "input#page_position[name=?]", "page[position]"
      assert_select "input#page_parent_id[name=?]", "page[parent_id]"
      assert_select "input#page_lft[name=?]", "page[lft]"
      assert_select "input#page_rgt[name=?]", "page[rgt]"
      assert_select "input#page_depth[name=?]", "page[depth]"
    end
  end
end
