module ReviewsHelper

  def stars_for_rating(rating)
    stars = ''
    rating.times do
      stars << image_tag('http://www.scmagazine.com/simages/sc/rating-large-star.png')
    end
    stars.html_safe
  end

end
