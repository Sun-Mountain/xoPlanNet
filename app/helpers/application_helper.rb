module ApplicationHelper
  def current_page(path, link_class) # rubocop:disable Metrics/AbcSize
    if request.path == path
      link_class + ' active'
    else
      link_class
    end
  end
end
