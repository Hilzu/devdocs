module Docs
  class Ocaml
    class CleanHtmlFilter < Filter
      def call
        css('.navbar').remove

        doc
      end
    end
  end
end
