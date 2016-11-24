class ArticleShowPage < SitePage
	def initialize(article)
		@article = article
	end


	def path
		article_path(article)
	end

	def listing_any_comment?
		has_css?(".comments")
	end

	def listing_comments?(*comments)
		comments.all? { |comment| has_css?(".comments",text:comment.message) }
	end

	def add_comment(commentaire_message)
		fill_in :commentaire_message, :with =>commentaire_message
		within("#new_commentaire") do
			find("input[type=submit]").click
		end
	end


	def listing_comment_with_body?(message)
		has_css?(".comments",text:message)
	end

	

	private

	attr_reader :article
end