
require 'treetop'

module SheetGrammar
  class IntegerLiteral < Treetop::Runtime::SyntaxNode
  end

  class StringLiteral < Treetop::Runtime::SyntaxNode
  end

  class Identifier < Treetop::Runtime::SyntaxNode
  end

  class Expression < Treetop::Runtime::SyntaxNode
  end

  class Body < Treetop::Runtime::SyntaxNode
  end
end

class SheetParsingThing
  require 'treetop'

  Treetop.load Rails.root.join( "app", "models", "sheet.treetop").to_s

  @@parser = SheetGrammarParser.new

  def self.parse(data)
    # Pass the data over to the parser instance
    tree = @@parser.parse(data)

    # If the AST is nil then there was an error during parsing
    # we need to report a simple error message to help the user
    if(tree.nil?)
      #raise Exception, "Parse error at offset: #{@@parser.index} because #{@@parser.failure_reason}"
    end

    return tree
  end
end

# raise SheetParsingThing.parse(File.read(Rails.root.join("app", "models", "MageTheAwakening.tt").to_s)).inspect

