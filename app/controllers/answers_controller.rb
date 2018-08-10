class AnswersController < ApplicationController
  def create 
  	@article = Article.find(params[:article_id])
  	@answer = @article.answers.create(answer_params)
  	redirect_to article_path(@article)
  end 

  private 
  def answer_params 
  	params.require(:answer).permit(:commenter, :body)
  end
end

