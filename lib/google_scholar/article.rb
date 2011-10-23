module GoogleScholar
  class Article
    class << self
      include ActiveSupport::Memoizable
    end

    attr_reader :doc

    def initialize(doc)
      @doc = doc
    end

    def title
      doc.css("h3").text
    end
    
    def link
      doc.css('h3 a').first['href']
    end

    def details
      doc.css('.gs_a').first.text
    end

    def cites_element
      doc.css('.gs_fl a').select{ |l| l.text =~ /^Cited by/ }.first
    end

    def cites_link
      cites_element ?
        GoogleScholar::ROOT_URL + cites_element['href'] :
        nil
    end

    def cites_count
      cites_element ?
        cites_element.text.gsub("Cited by ", "").to_i :
        0
    end

    memoize :title, :link, :details, :cites_link, :cites_count
  end
end
