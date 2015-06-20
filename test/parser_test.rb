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
      heading: nil,
      line: "* [Griddler](https://github.com/thoughtbot/griddler) - Simplify receiving email in Rails\n"
    }
  end
end
