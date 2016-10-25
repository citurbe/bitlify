require 'open-uri'
class Article < ApplicationRecord

  def self.create(params)
    @article = Article.new
    new_link = params[:link] + "?login=8j7k9h0l&password=gu$ryd@wnw0w"
    title = Mechanize.new.get("#{new_link}").title
    @article.title = title
    @article.link = new_link
    @article.save
    @article
  end
end
