class JobsController < ApplicationController
  def index
    @search = Jobs.search(params[:q])
    @jobs = @search.result(distinct: true)
    @departments = Jobs.departments
  end
  def show
    @job = Jobs.find(params[:id])

    respond_to do |format|
      format.html
      format.js
    end
  end
end
