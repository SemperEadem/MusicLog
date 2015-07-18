class PracticeSessionsController < ApplicationController
  before_action :authenticate_user!

  def show
    @practice_session = current_user.practice_sessions.find(params[:id])
  end

	def new
		@practice_session = PracticeSession.new
	end

  def create
    @practice_session = PracticeSession.new(practice_session_params.merge(user_id: current_user.id))
    if @practice_session.save
      session[:current_practice_session_id] = @practice_session.id
      redirect_to @practice_session, notice: "Votre session a commencé ! Vous pouvez maintenant y ajouter des exercices."
    else
      render :new
    end
  end

  private

  def practice_session_params
    params.require(:practice_session).permit(:path_id)
  end

end
