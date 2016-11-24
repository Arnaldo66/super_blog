class CommentairesController < ApplicationController

	def create
		@commentaire = Commentaire.new(commentaire_params)
		article = Article.find(params[:article_id])

		@commentaire.article = article
		if @commentaire.save
			redirect_to article
		end
	end

	private def commentaire_params
		params.require(:commentaire).permit(:message)
	end

end