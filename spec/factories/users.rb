FactoryGirl.define do
  factory :user do
    email 'test@test.com'
    name 'Test'
    surname 'Test2'
    password '123456'
    password_confirmation '123456'
  end
end
