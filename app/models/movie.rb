# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord

  def director
    # look up the row in the directors table corresponding to the receiving movie’s 
    # director_id, and return an instance of Director
    my_director_id = self.director_id
    matching_directors = Director.where({ :id => my_director_id })
    the_director = matching_directors[0]
    return the_director
  end

end
