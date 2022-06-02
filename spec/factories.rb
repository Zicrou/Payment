FactoryBot.define do
  factory (:payment) do
    amount { 1 }
  end

  factory (:pay) do
    amount { Faker::Number.number(digits: 10) }
  end

#  factory :payment do
#    amount { 1 }
#  end
#
#    factory(:user) do
#        email { Faker::Internet.email }
#        password { Faker::Internet.password }
#    end
end