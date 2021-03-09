require 'active_support'

# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :asciidoc

activate :autoprefixer do |prefix|
  prefix.browsers = 'last 2 versions'
end

# activate :i18n, mount_at_root: :fr

# set :relative_links, true
# set :images_dir, './images'

configure :build do
  set :http_prefix, "/a/b/c/"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
# page '/index.html', layout: false
# page '/*.json',     layout: false
# page '/*.txt',      layout: false
# page '/*.xml',      layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end
helpers do
  def aurl url
    File.join(http_prefix, url)
  end
end

configure :development do
  set :http_prefix, '/'
end

configure :build do
  set :http_prefix, './'
end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript

#   # Append a hash to asset urls (make sure to use the url helpers)
#   # activate :asset_hash
# end
