module Docs
  class Ocaml
    class EntriesFilter < Docs::EntriesFilter
      # def get_name
      #   node = at_css('h1 a')
      #   return slug unless node
      #   node.content.strip
      # end

      def get_type
        node = at_css('h1 a')
        node.content.strip
      end

      def additional_entries
        entries = []
        css('pre').each do |node|
          name_nodes = node.css('span')
          next unless name_nodes
          name_node = name_nodes[0]
          name_node.css('.keyword').remove
          name = name_node.content.strip
          id = name_node['id']
          entries << ["#{type}.#{name}", id, type]
        end
        entries
      end
    end
  end
end
