module Mop
  class WhitespaceProcessor
    def initialize(text)
      @text = text
    end

    def process
      code = @text.dup
      result = []
      code.each_line do |line|
        line.gsub!(/(\s+)$/, "\n")
        line.gsub!(/\t/, '  ')
        result << line
      end

      while result.last =~ /^$/
        result.pop
      end

      unless result.last =~ /\n$/
        result << "\n"
      end

      code = result.join
      code.gsub!(/\A\n*/, '')
      code
    end
  end
end
