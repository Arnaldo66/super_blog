FactoryGirl.define do
	factory :article do
		sequence(:title) { |n| "This is a title #{n}" }
		body "This is a body"
	end
end