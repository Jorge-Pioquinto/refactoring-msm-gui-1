# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  
  def filmography
    my_id = self.id

    matching_movies = Movie.where({ :director_id => my_id})

    return matching_movies
  end 

  # Three 1-N association:
  #   - Director => Movie 
  #   - Movie => Character 
  #   - Actor => Character

  # Try define: 
  #   - Director#filmogaphy X
  #   - Movier#director     X
  #   - Movie#characters    X
  #   - Character#movie     X
  #   - Actor#characters
  #   - Character#actor     X


end
