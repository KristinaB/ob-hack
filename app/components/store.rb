class Store
  include Inesita::Component

  def click
    `document.querySelector('.payment').classList.add("bounceInDown")`
  end

  def render
    div class: 'panel panel-default text-center ' do
      div class: ' relative panel-body' do
        h1(class:"title"){ text "Store Profile" }
        img src: '/static/img/me.jpg', class:"full"
      end
    end

    div class: 'panel panel-default text-center ' do

      h1 do
        text "Hello I'm op return"
      end
      h4 do
        text 'This is a sample component'
      end
      button onclick: -> { click } do
        text "press me"
      end
      div class: "payment animated  " do #  animated bounceInDown
        text "0x1234"
      end

      div class: "products " do
        text "products"
      end
    end
  end
end
