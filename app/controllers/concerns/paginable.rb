module Paginable
  protected

  def current_page
    (params[:page] || 1).to_i
  end

  def per_page
    (params[:per_page] || 20).to_i
  end

  def get_links_serializer_options links_paths, collection
    {
      links: {
        first: send(links_paths, page: 1),
        last: send(links_paths, collection.total_pages),
        prev: send(links_paths, collection.prev_page),
        next: send(links_paths, collection.next_page),
      }
    }
  end
end