module PinsHelper
  def vimeo_id(url)
    match = url.match(/https?:\/\/(?:[\w]+\.)*vimeo\.com(?:[\/\w]*\/?)?\/(?<id>[0-9]+)[^\s]*/)
    match[:id] if match.present?
  end
end
