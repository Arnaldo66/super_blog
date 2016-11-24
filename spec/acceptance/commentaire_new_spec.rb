RSpec.feature "Commentaires create" do
	let(:article) {create(:article)}
	let(:article_page) {ArticleShowPage.new(article)}

	scenario 'when there is no comments' do
		article_page.visit

		expect(article_page).not_to be_listing_any_comment
	end

	scenario 'when the are a few comments' do
		comments1 = create(:commentaire,article: article,message:"Hello")
		comments2 = create(:commentaire,article: article,message:"world")

		article_page.visit	
		expect(article_page).to be_listing_comments(comments1,comments2)
	end


	scenario "create a commentaire" do
		article_page.visit.add_comment("My shiny comment")

		expect(article_page).to be_listing_comment_with_body("My shiny comment")

	end



end