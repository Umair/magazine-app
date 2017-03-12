require 'factory_girl'
require 'support/factory_girl'
#Define Article factory

FactoryGirl.define do
  factory :article do
    title "Title of Article"
    content  "Conent of Article"
  end

  end