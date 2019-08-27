class UsersController < ApplicationController
  def transfer
    target_user = User.find params[:target_user]
    account = target_user.bank_accounts.first
    amount = params[:amount]
    process_transfer(user, amount,account)
    return render json: request_errors, status: :bad_request if request_errors.present?
    render json: { new_ballance: user.bank_accounts.first.currency.amount }, status: :ok
  end

  private

  def user
    @user ||= User.find(params[:user_id])
  end

  def process_transfer(user, amount, account)
    user.bank_accounts.first.transfer_money(amount, account)
  end

  def request_errors
    errors = []
    errors << 'The amount must be positive' if params['amount'] < 1
    errors << 'The account currencies must be diferent' if same_currencies?
    errors
  end

  def same_currencies?
    target_user = User.find params[:target_user]
    user.bank_accounts.first.currency.id == target_user.bank_accounts.first.currency.id 
  end
end
