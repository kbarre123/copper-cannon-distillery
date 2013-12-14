module ApplicationHelper
  
  def site_name
    "Copper Cannon Distillery"
  end

  def site_url
    if Rails.env.production?
      # Place production URL in quotes below
      "http://www.coppercannondistillery.com"
    else
      # Our dev & test URL
      "http://copper-cannon-distillery-60280.use1.actionbox.io/"
    end
  end
  
  def meta_author
    "Blake Amacker, K.C. Barrett"
  end
  
  def meta_description
    "Copper Cannon Distillery: Distilling fine spirits in Chesterfield, NH"
  end
  
  def meta_keywords
    "Copper Cannon Distillery, rum, micro-distillery, boutique distillery, Chesterfield NH"
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
  
end
