class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = [ "claire", "toni", "alex", "andi" ]

    if params[:member]
      @members = @members.select do |member|
        member.start_with?(params[:member])
      end
    end
  end
end
