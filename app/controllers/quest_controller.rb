class QuestController < ApplicationController
  include QuestHelper

  # Don't modify methods step1-step5 and deadend
  # You can modify private section of this class
  def step1; end

  def step2; end

  def step3
    redirect_to :deadend unless valid_step2?(params[:answer])
  end

  def step4
    redirect_to :deadend unless answer_params[:color].present? && answer_params[:number].present?
  end

  def step5
    redirect_to :deadend if @forbidden
  end

  def final
    redirect_to :deadend unless correct_final_answer?(version_params)
  end

  def deadend; end

  private

  def answer_params
    params.require(:answer).permit(:number, :color)
  end

  def version_params
    params.require(:version).permit(:major, :minor, :patch)
  end
end
