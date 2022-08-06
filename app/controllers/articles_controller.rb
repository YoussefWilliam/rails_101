class ArticlesController < ApplicationController

    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def create
        # render plain: params[:article].inspect

        # One way of creating a record "prefered one"
        # Article.create(article_params)
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "Article is successfully created"
            redirect_to article_path(@article)
        else
            render 'new'
        end
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            flash[:notice] = "Article is succefully edited"
            redirect_to article_path(@article)
        else
            render 'edit'
        end
    end

    def show
        @article = Article.find(params[:id])
    end
    
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        flash[:notice] = "Article is succefully deleted"
        redirect_to article_path
    end

    def edit
        article_id = params[:id]
        @article = Article.find(article_id)
    end


    private
        def article_params
            params.require(:article).permit(:title, :description, :author)
        end
    
end