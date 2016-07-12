activate :directory_indexes

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

configure :build do
  activate :minify_css
  activate :minify_html
  # Ignore favicons and photos.css (that we lazy load, so need filename to stay)
  activate :asset_hash, :ignore => [/([^\/]+\.png)$/, /css\/photos\.css$/]
end

activate :deploy do |deploy|
  deploy.build_before = true # runs build before deploying
  deploy.deploy_method = :git
  deploy.branch = 'master'
end