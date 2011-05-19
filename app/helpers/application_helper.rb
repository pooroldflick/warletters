module ApplicationHelper

  # Return a title on a per-page basis.
  def title
    base_title = "War Letters"
      if @title.nil?
        base_title
      end
      else
	"#{base_title} | #{@title}"
      end
  end
end
