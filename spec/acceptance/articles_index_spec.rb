RSpec.feature "Articles index" do
	
	scenario "with existing articles" do

		article1 = create(:article)
		article2 = create(:article)

		visit '/articles'

		expect(page.status_code).to be(200)
		expect(page).to have_content(article1.title)
		expect(page).to have_content(article2.title)
	end

	scenario "with no existing article" do
		visit '/articles'
		expect(page).not_to have_css("li")
		
	end

end