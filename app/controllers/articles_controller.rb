class ArticlesController < ApplicationController

	include ArticlesHelper

	def index
		@articles = Article.all
	end

	def show
		@article = 	Article.find(params[:id])
	end

	def new
		@article = Article.new	
	end

	def create
		@article = Article.new(article_params)
		@article.save
		redirect_to article_path(@article)
	end
 	
 	# You can use this method of article_params here or a new thing introduced using articles_helper.
 	# def article_params
 	# 	params.require(:article).permit(:title, :body)
 	# end

 	def destroy
 		@article = Article.find(params[:id])
 		@article.destroy
 		redirect_to articles_path
 	end
	
end
