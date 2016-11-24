FactoryGirl.define do
	factory :commentaire do
		article
		message "voici le message"
	end
end