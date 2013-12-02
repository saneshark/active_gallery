require 'spec_helper'

describe "pieces/index" do
  before(:each) do
    assign(:pieces, [
      stub_model(Piece,
        :gallery_id => 1,
        :type => "Type",
        :title => "Title",
        :description => "Description",
        :dimensions => "Dimensions",
        :medium => "Medium",
        :image_file => "Image File"
      ),
      stub_model(Piece,
        :gallery_id => 1,
        :type => "Type",
        :title => "Title",
        :description => "Description",
        :dimensions => "Dimensions",
        :medium => "Medium",
        :image_file => "Image File"
      )
    ])
  end

  it "renders a list of pieces" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Dimensions".to_s, :count => 2
    assert_select "tr>td", :text => "Medium".to_s, :count => 2
    assert_select "tr>td", :text => "Image File".to_s, :count => 2
  end
end
