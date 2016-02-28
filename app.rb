Camping.goes :Home

module Home::Controllers
  class Index < R '/'
    def get
      render :home
    end
  end
end

module Home::Views
  def layout
    html do
      head do
        title { "Motocross Landing Page" }
        link :href => 'css/style.css', :rel => 'stylesheet', :type => 'text/css'
      end
      body { self << yield }
    end
  end
  
  def home
    img :src => 'css/style.css', :rel => 'stylesheet', :type => 'text/css'
  end
end