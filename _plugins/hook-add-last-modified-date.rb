Jekyll::Hooks.register :posts, :pre_render do |post|
  # inject last modified time in post's datas.
  post.data['last_modified_date'] = File.mtime( post.path )
end

Jekyll::Hooks.register :pages, :pre_render do |page|
  # inject last modified time in page's datas.
  page.data['last_modified_date'] = File.mtime( page.path )
end
