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
        meta :name => 'viewport', :content => 'width=device-width'
        link :href => 'css/style.css', :rel => 'stylesheet', :type => 'text/css'
        script :src => 'js/jquery-1.7.2.min.js', :type => 'text/javascript'
        script :src => 'js/html5.js', :type => 'text/javascript'
        script :src => 'js/functions.js', :type => 'text/javascript'
      end
      body { self << yield }
    end
  end
  
  def home
    section :id => 'wrapper' do
      section :id => 'bg' do
        img :src => 'http://lorempixel.com/1900/1800/sports/5/', :rel => 'stylesheet', :type => 'text/css'
      end
        section :class => 'content-box' do
          h1 :id => 'logo' do
            a :href => '/', :class => 'notext' do
              'Motocross'
            end
          end
          section :class => 'blackbox' do
            h2 { "Get news on the Motocross sport" }
            p { "Please enter your email address to get this free report" }
            form :action => '/send', :method => 'post', :name => 'form-blackbox', :id => 'form-blackbox' do
              input :type => 'text', :class => 'field', :placeholder => 'Enter a valid email here', :required => ''
              input :type => 'submit', :class => 'submit', :value => 'Download the report'
            end
            p { "Your information will *never* be shared or sold to a 3rd party." }
          end
          footer :class => 'footer' do
            p do
              span { "Created By " }
              a :href => 'http://www.efrj.com.br' do
                "EFRJ"
              end
            end
          end
        end
    end
  end
end