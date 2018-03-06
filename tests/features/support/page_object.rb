

class PostPage < SitePrism::Page
  set_url '/admin/posts'
  elements :cards, '.post'

  element :add, 'a[href*=add]'
  element :title, 'input[name=title]'
  element :image, 'input[name=image]'
  element :description, 'textarea[name=description]'
  element :save, '#savePost'

  element :toast_sucess, '.toast-success'
end
