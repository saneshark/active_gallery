# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :piece do
    gallery_id 1
    type ""
    title "MyString"
    description "MyString"
    dimensions "MyString"
    completed_date "2013-12-02 00:28:40"
    medium "MyString"
    image_file "MyString"
  end
end
