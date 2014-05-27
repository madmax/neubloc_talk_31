module MarkdownHelper
  def markdown(text)
    markdown = Redcarpet::Markdown.new(
      Redcarpet::Render::HTML.new(hard_wrap: true),
      autolink: true, space_after_headers: true)
    markdown.render(text).html_safe
  end
end
