class Movie < ActiveRecord::Base
  def self.all_ratings
    ['G','PG', 'PG-13', 'R']
  end 
  
  def self.with_ratings(ratings_list)
    if ratings_list != nil
      return Movie.where('rating IN (?)', ratings_list)
    else 
      return Movie.all()
    end 
  end 
end
