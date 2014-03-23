class StaticPagesController < ApplicationController
  def home
    @search = Jobs.search(params[:q])
    @jobs = @search.result(distinct: true)
  end

  def style

  end

  def about
  end

  def contact

  end
end