class StaticPagesController < ApplicationController
  def home
    @search = Jobs.search(params[:q])
    @jobs = @search.result(distinct: true)
  end
  def style

  end
end
