ParserWikiTitle collects the titles of all articles of Russian wikipedia.
=========

Installation
------------------
```ruby
$ gem install ParserWikiTitle
```

Parser
------------------
  Parser when you first start starts with the first article. On subsequent launches, continues from the last position.

```ruby
  # collects the titles of all articles
  $ bin/parser_wiki_title
  # => data/words.txt
```

License
---------------
The gem is available as open source under the terms of the [MIT License] (https://opensource.org/licenses/MIT).

Author
--------------
Arthur H.
