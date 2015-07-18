class UserExercisesController < ApplicationController
  before_action :authenticate_user!

  def new
    @exercise = Exercise.friendly.find(params[:id])
    @user_exercise = UserExercise.new(exercise_id: @exercise.id)
  end

  def create
    @user_exercise = UserExercise.new(user_exercise_params.merge(user_id: current_user.id, practice_session_id: session[:current_practice_session_id]))
  end

end
