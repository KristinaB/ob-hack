class Router
  include Inesita::Router

  def routes
    route '/', to: Store
    route '/products', to: Products
  end
end
