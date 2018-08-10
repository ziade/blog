class AnswersController < ApplicationController
  http_basic_authenticate_with  name: 'torres', password: 'kare', except: [:show]
  def new 
    @answer = Answer.new
  end
  def create 
  	@article = Article.find(params[:article_id])
  	@answer = @article.answers.create(answer_params)
  	redirect_to article_path(@article)
  end 

  def destroy
  	@article = Article.find(params[:article_id])
  	@answer = @article.answers.find(params[:id])
    @answer.destroy 
  	redirect_to article_path(@article) 
  end


  private 
  def answer_params 
  	params.require(:answer).permit(:commenter, :body)
  end
end

