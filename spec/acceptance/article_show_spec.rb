RSpec.feature "Articles show" do
	
 
	scenario "show article" do
		article1 = create(:article, title:"Main",body:"Salut")

		visit "/articles/#{article1.id}"


		expect(page.status_code).to be(200)
		expect(page).to have_css("h1",text:"Main")
		expect(page).to have_content("Salut")
		expect(page).not_to have_content("other")
	end

	scenario "correction missing article" do

	end

end