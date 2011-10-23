require 'open-uri'

module GoogleScholar
  class Page
    class << self
      include ActiveSupport::Memoizable
    end

    attr_reader :url, :doc

    def initialize(url)
      @url = url
    end

    def doc
      Nokogiri::HTML(open(url))
    end

    def articles
      doc.css(".gs_r").map{ |e|
        GoogleScholar::Article.new e
      }
    end

    memoize :doc, :articles
  end
end
