class HomeController <ApplicationController
  def index
     right_now= Time.new 
    @current_time = right_now.to_formatted_s(:long)
    @greet_message = case right_now.hour 
      when 1..11
       "Good Morning, Renee!" 
        
      when 12..15
       "Good Afternoon, Renee!"
          
      when 16..19
       "Good Evening, Renee!"
    
      when 20..00
       "Good Night!"
    end  
  end
end


