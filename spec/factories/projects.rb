FactoryBot.define do
  factory :project do
    title { "CMS" }
    description { "Content Managment System" }
    status { true }
    config { "MyText" }
  end
end