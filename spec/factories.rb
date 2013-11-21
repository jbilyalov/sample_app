FactoryGirl.define do
  factory :user do
    id        1
    name      "Jacob Bilyalov"
    email     "jbilyalov@turbosquid.com"
    password  "foobar"
    password_confirmation "foobar"
  end
end