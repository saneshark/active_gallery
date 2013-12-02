# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :page do
    title "MyString"
    seo "MyText"
    body "MyText"
    view_template "MyString"
    layout_template "MyString"
    slug "MyString"
    link_url "MyString"
    path "MyString"
    visible false
    deleted false
    deletable false
    draft false
    position 1
    parent_id 1
    lft 1
    rgt 1
    depth 1
  end
end
