module ParserWikiTitle
  class Parser
    system `mkdir -p "../data"`
    FILE = File.open('../data/words.txt', 'a')

    def self.parse(apcontinue = nil)
      apcontinue = `tail -n 1 ../data/words.txt`.chomp if apcontinue.nil?
      result = open(URI.escape("https://ru.wikipedia.org/w/api.php?action=query&list=allpages&aplimit=max&apfrom=#{apcontinue}&format=json")).read
      data = JSON.parse(result)
      data.dig('query', 'allpages').map do |var|
        FILE << "#{var['title']}\n"
      end
      sleep 3
      parse(data.dig('continue', 'apcontinue'))
    end
  end
end
