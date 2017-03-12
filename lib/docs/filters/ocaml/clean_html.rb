module Docs
  class Ocaml
    class CleanHtmlFilter < Filter
      def call
        css('.navbar').remove
        css('h1').remove
        css('br').remove

        doc
      end
    end
  end
end
