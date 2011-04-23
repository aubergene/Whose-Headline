class PlaysController < ApplicationController

  before_filter :require_user

  def new
    @play = Play.new
    @headline = Headline.order("RANDOM()").first
    @sources = Source.order("RANDOM()").limit(5)
    @sources << @headline.source
    @sources = @sources.uniq.shuffle
  end

  def create
    redirect_to new_play_path and return unless chosen_source = Source.where(:id => params[:chosen_source_id]).first

    headline = Headline.find(params[:headline_id])
    sources = Source.find(params[:source_ids])

    play = Play.new(:user => current_user, :headline => headline, :chosen_source => chosen_source)
    sources.each do |source|
      play.played_sources.build(:source => source)
    end

    if play.save!
      msg = play.won? ? 'Correct' : 'Wrong'
      flash[:notice] = msg
    else
      flash[:notice] = "Hmm, couldn't save"
    end
    redirect_to new_play_path
  end


end
