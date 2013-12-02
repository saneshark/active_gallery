require 'spec_helper'

describe "galleries/new" do
  before(:each) do
    assign(:gallery, stub_model(Gallery,
      :title => "MyString",
      :description => "MyString",
      :author => "MyString",
      :image_file => "MyString"
    ).as_new_record)
  end

  it "renders new gallery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", galleries_path, "post" do
      assert_select "input#gallery_title[name=?]", "gallery[title]"
      assert_select "input#gallery_description[name=?]", "gallery[description]"
      assert_select "input#gallery_author[name=?]", "gallery[author]"
      assert_select "input#gallery_image_file[name=?]", "gallery[image_file]"
    end
  end
end
