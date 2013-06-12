class PagesController < ApplicationController
  def show
    @page = Page.where(:permalink => params[:id]).first
  end

  def ckupdate
    if user_signed_in?
      if current_user.has_role? :admin
        page = Page.where(:permalink => params[:id]).first
        page.content = params[:content]
        page.title = params[:title]
        page.save!
      end
    end
    render text: ""
  end
end
