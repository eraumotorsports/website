class PagesController < ApplicationController
  def show
    @page = Page.where(:permalink => params[:id]).first
  end

  def ckupdate
    page = Page.where(:permalink => params[:id]).first
    page.content = params[:content]
    page.title = params[:title]
    page.save!
    render text: ""
  end
end
