FactoryGirl.define do
  factory :question do
    sequence(:title) { |n| "MyTitle#{n}" }
    author 'user'
    body 'test'
  end
end