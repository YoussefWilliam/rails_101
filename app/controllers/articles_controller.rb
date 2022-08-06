class ArticlesController < ApplicationController

    def new
        @article = Article.new
    end

    def create
        # render plain: params[:article].inspect

        # One way of creating a record "prefered one"
        # Article.create(article_params)
        @article = Article.new(article_params)
        @article.save
        redirect_to article_show(@article)
    end

    private
        def article_params
            params.require(:article).permit(:title, :description, :author)
        end
    
end