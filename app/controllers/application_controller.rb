require 'pry'

 class ApplicationController < Sinatra::Base
 set :default_content_type, 'application/json'

#   post '/reviews' do
#     binding.pry
#   end

  patch '/reviews/:id' do
    review = Review.find(params[:id])
    review.update(
      score: params[:score],
      comment: params[:comment]
    )
    review.to_json
  end
  

end
