class PagesController < ApplicationController
  def show
    @page = Page.where(:permalink => params[:id]).first
  end

  def mercury_update
    page = Page.where(:permalink => params[:id]).first
    page.title = params[:content][:title][:value]
    page.content = params[:content][:content][:value]
    page.save!
    render text: ""
  end
end
