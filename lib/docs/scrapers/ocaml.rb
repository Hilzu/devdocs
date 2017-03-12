module Docs
  class Ocaml < UrlScraper
    self.name = 'OCaml'
    self.type = 'ocaml'
    self.release = '4.04'
    self.base_url = 'http://caml.inria.fr/pub/docs/manual-ocaml/libref'
    self.root_path = '/index_modules.html'
    self.links = {
      home: 'https://ocaml.org',
      code: 'https://github.com/ocaml/ocaml'
    }

    html_filters.push 'ocaml/entries', 'ocaml/clean_html', 'title'

    options[:skip_patterns] = [
      /\/index.html$/,
      /\/type_[^\/]*\.html$/,
      /\/index_[^\/]*\.html$/
    ]

    options[:attribution] = <<-HTML
      &copy;  Institut National de Recherche en Informatique et en Automatique (INRIA)<br>
      Licensed under the GNU Lesser General Public License (LGPL) version 2.1
    HTML
  end
end
