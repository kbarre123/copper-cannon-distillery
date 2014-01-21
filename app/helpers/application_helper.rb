module ApplicationHelper
  
  def site_name
    "Copper Cannon Distillery"
  end

  def site_url
    if Rails.env.production?
      # Place production URL in quotes below. Will be coppercannondistillery.com once we go live. Also, need to
      # change segment.io URL on that site and add new key to the script in /app/assets/javascripts/segmentio.js
      "http://copper-cannon-distillery.herokuapp.com/"
    else
      # Our dev & test URL
      "http://rails-box-68991.use1.nitrousbox.com/"
    end
  end
  
  def meta_author
    "Blake Amacker, K.C. Barrett"
  end
  
  def meta_description
    "Copper Cannon Distillery: Distilling fine spirits in Chesterfield, NH"
  end
  
  def meta_keywords
    "Copper Cannon Distillery, rum, whiskey, micro-distillery, boutique distillery, Chesterfield NH"
  end
  
  # Returns full title on a per-page basis. No need to change any of this as page_title & site_name
  # are set elsewhere.
  def full_title(page_title)
    if page_title.empty?
      site_name
    else
      "#{page_title} | #{site_name}"
    end
  end
  
  # Use Bootstrap alert stylings
  def flash_class(level)
    case level
      when :info then "alert alert-info"
      when :success then "alert alert-success"
      when :warning then "alert alert-warning"
      when :danger then "alert alert-danger"
    end        
  end
  
end
