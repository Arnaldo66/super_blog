class SitePage
	include Rails.application.routes.url_helpers
	include Capybara::DSL

	def visit
		super path
		self
	end


	def path
		fail NotImplementedError
	end

end