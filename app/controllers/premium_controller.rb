class PremiumController < ApplicationController
  def new
  end

  def create

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create({
      :customer    => customer.id,
      :amount      => 8900,
      :description => 'Website Package',
      :currency    => 'usd',
    })    


    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_premium_path
    end
end
