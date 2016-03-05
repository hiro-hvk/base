class InquiriesController < ApplicationController
  
  # GET /inquiries/new
  def new
    @inquiry = Inquiry.new
  end

  
  def confirm
    @inquiry = Inquiry.new(inquiry_params)
    
    if @inquiry.valid?
      
    else
      render action: 'new'
    end
  end

  
  def thanks
    @inquiry = Inquiry.new(inquiry_params)

      if params[:back]
        render :new
      elsif @inquiry.save # DBに保存できたらメールを送信
        #@mail = InquiryMailer.sendmail_confirm(@inquiry).deliver_now
      else
        render :new
      end
    
  end

    
  private
    
    def inquiry_params
      params.require(:inquiry).permit(:company_name, :name, :email, :phone, :content)
    end

end
