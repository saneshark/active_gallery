require 'spec_helper'

describe "galleries/edit" do
  before(:each) do
    @gallery = assign(:gallery, stub_model(Gallery,
      :title => "MyString",
      :description => "MyString",
      :author => "MyString",
      :image_file => "MyString"
    ))
  end

  it "renders the edit gallery form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gallery_path(@gallery), "post" do
      assert_select "input#gallery_title[name=?]", "gallery[title]"
      assert_select "input#gallery_description[name=?]", "gallery[description]"
      assert_select "input#gallery_author[name=?]", "gallery[author]"
      assert_select "input#gallery_image_file[name=?]", "gallery[image_file]"
    end
  end
end
