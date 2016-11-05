class NavBar
  include Inesita::Component

  def render
    nav class: 'navbar navbar-default' do
      div class: 'container' do
        div class: 'navbar-header' do
          span class: 'navbar-brand' do
            text 'ob-hack'
          end
          ul class: 'nav navbar-nav' do
            li class: "#{"active" if router.current_url?(:store)}" do
              a href: router.url_for(:store) do
                text 'Store'
              end
            end
            li class: "#{"active" if router.current_url?(:products)}" do
              a href: router.url_for(:products) do
                text 'Products'
              end
            end
          end
        end
      end
    end
  end
end
