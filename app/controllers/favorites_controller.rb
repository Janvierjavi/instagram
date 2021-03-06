class FavoritesController < ApplicationController
    def create
        favorite = current_user.favorites.create(post_id: params[:post_id])
        redirect_to posts_url, notice: "#{favorite.post.user.First_Name}'s post has been favorited"
      end
    
      def destroy
        favorite = current_user.favorites.find_by(id: params[:id]).destroy
        redirect_to posts_url, notice: "post has been unfavored"
      end
      def index
        @favorites = Favorite.all
      end
end
