require 'open-uri'
class Article < ApplicationRecord

  def self.create(params)
    @article = Article.new
    new_link = params[:link] + "?login=8j7k9h0l&password=gu$ryd@wnw0w"
    title = open("#{new_link}").read =~ /<title>(.*?)<\/title>/
    @article.title = title
    @article.link = new_link
    @article.save
    @article
  end
end
