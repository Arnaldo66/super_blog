RSpec.feature "Articles index" do
	
	scenario "with existing articles" do
		visit '/articles'

		expect(page.status_code).to be(200)
	end

	scenario "with no existing article" do
		
	end
end