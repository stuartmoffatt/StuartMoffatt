activate :directory_indexes

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

configure :build do
  activate :minify_css
  activate :minify_html
  activate :minify_javascript
  # Ignore favicons and photos.css (that we lazy load, so need filename to stay)
  activate :asset_hash, :ignore => [/([^\/]+\.png)$/, /css\/photos\.css$/]
end

# silence i18n warning
# ::I18n.config.enforce_available_locales = false