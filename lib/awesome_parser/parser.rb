module AwesomeParser
  class Parser
    attr_reader :items

    def initialize(text)
      @text = text
      @items = []
    end

    def parse!
      heading = nil

      @text.each_line do |line|
        case line
        when /^\#+ ?(.+)/
          heading = $1

        when /\[(.+)\]\((.+)\) - (.+)/
          items << {
            url: $2,
            title: $1,
            description: $3,
            heading: heading,
            line: line,
          }
        end
      end
    end
  end
end
