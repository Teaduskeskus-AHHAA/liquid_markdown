class String
  # Returns a new string after stripping all html tags
  #
  #  string = "<hello>threre</hello>"
  #
  #  string.strip_html_tags => "there"
  def strip_html_tags
    empty = ''.freeze
    self.to_s
        .gsub(/<script.*?<\/script>/m, empty)
         .gsub(/<figaption.*?<\/figcaption>/m, empty)
        .gsub(/<!--.*?-->/m, empty)
        .gsub(/<style.*?<\/style>/m, empty)
        .gsub(/<.*?>/m, empty)
  end
end
