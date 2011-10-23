require "nokogiri"
require "active_support/memoizable"

require "google_scholar/version"

module GoogleScholar
  ROOT_URL = 'http://scholar.google.com'
end

require "google_scholar/page"
require "google_scholar/article"

