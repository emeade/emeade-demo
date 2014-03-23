class JobsController < ApplicationController
  def index
    @search = Jobs.search(params[:q])
    @search.sorts = 'published_at desc' if @search.sorts.empty?
    @jobs = @search.result(distinct: true)
  end
  def show
    @job = Jobs.find(params[:id])

    respond_to do |format|
      format.html
      format.js
    end
  end
end
