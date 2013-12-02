require 'spec_helper'

describe "pieces/show" do
  before(:each) do
    @piece = assign(:piece, stub_model(Piece,
      :gallery_id => 1,
      :type => "Type",
      :title => "Title",
      :description => "Description",
      :dimensions => "Dimensions",
      :medium => "Medium",
      :image_file => "Image File"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Type/)
    rendered.should match(/Title/)
    rendered.should match(/Description/)
    rendered.should match(/Dimensions/)
    rendered.should match(/Medium/)
    rendered.should match(/Image File/)
  end
end
