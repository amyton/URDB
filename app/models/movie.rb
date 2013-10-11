class Movie < ActiveRecord::Base
  has_many :showtimes
  has_many :roles
  has_many :stars, through: :roles
  validates :title, presence: true

  def rotten_finder
    RottenMovie.find(title: title, limit: 1)
  end
  
  def snippet
    description.to_s.truncate 50
  end

  def audience_rating
    rotten_finder.ratings.audience_score
  end

  def self.average_rating
    scores = self.all.collect do |movie|
      movie.audience_rating
    end

    sum = scores.sum

    sum / scores.length
  end

end
