require "minitest/autorun"

require "awesome_parser"

class UrlTest < Minitest::Test
  def test_items_with_ruby
    text = File.open("test/fixtures/markets/awesome-ruby/README.md").read
    parser = AwesomeParser::Parser.new(text)
    parser.parse!

    assert_includes parser.items, {
      url: "https://github.com/thoughtbot/griddler",
      title: "Griddler",
      description: "Simplify receiving email in Rails",
      heading: "Email",
      line: "* [Griddler](https://github.com/thoughtbot/griddler) - Simplify receiving email in Rails\n"
    }
  end

  def test_items_with_go
    text = File.open("test/fixtures/avelino/awesome-go/README.md").read
    parser = AwesomeParser::Parser.new(text)
    parser.parse!

    assert_includes parser.items, {
      url: "https://github.com/blevesearch/bleve",
      title: "bleve",
      description: "A modern text indexing library for go.",
      heading: "Database Drivers",
      line: "    * [bleve](https://github.com/blevesearch/bleve) - A modern text indexing library for go.\n"
    }
  end

  def test_items_with_talks
    text = File.open("test/fixtures/JanVanRyswyck/awesome-talks/README.md").read
    parser = AwesomeParser::Parser.new(text)
    parser.parse!

    assert_includes parser.items, {
      url: "http://www.youtube.com/watch?v=pMGY9ViIGNU",
      title: "Functional Principles for Object-Oriented Developers",
      description: "by **Jessica Kerr** [51:13]",
      heading: "Functional Programming",
      line: "* [Functional Principles for Object-Oriented Developers](http://www.youtube.com/watch?v=pMGY9ViIGNU) by **Jessica Kerr** [51:13]\n"
    }
  end
end
