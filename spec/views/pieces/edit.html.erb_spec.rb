require 'spec_helper'

describe "pieces/edit" do
  before(:each) do
    @piece = assign(:piece, stub_model(Piece,
      :gallery_id => 1,
      :type => "",
      :title => "MyString",
      :description => "MyString",
      :dimensions => "MyString",
      :medium => "MyString",
      :image_file => "MyString"
    ))
  end

  it "renders the edit piece form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", piece_path(@piece), "post" do
      assert_select "input#piece_gallery_id[name=?]", "piece[gallery_id]"
      assert_select "input#piece_type[name=?]", "piece[type]"
      assert_select "input#piece_title[name=?]", "piece[title]"
      assert_select "input#piece_description[name=?]", "piece[description]"
      assert_select "input#piece_dimensions[name=?]", "piece[dimensions]"
      assert_select "input#piece_medium[name=?]", "piece[medium]"
      assert_select "input#piece_image_file[name=?]", "piece[image_file]"
    end
  end
end
