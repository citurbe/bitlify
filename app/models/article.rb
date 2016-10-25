require 'open-uri'
class Article < ApplicationRecord

  def self.create(params)
    @article = Article.new
    new_link = params[:link] + "?login=8j7k9h0l&password=gu$ryd@wnw0w"
    newer_link = Bitly.client.shorten(new_link)
    title = Mechanize.new.get("#{new_link}").title
    @article.title = title
    @article.link = newer_link.short_url
    @article.save
    @article
  end
end
