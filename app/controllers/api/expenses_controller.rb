class Api::ExpensesController < ApplicationController
  def index
    @expense = Expense.all
    # @expense = current_user.expenses


    render "index.json.jbuilder"
  end

  def create
    @expense = Expense.new(
      description: params["description"], 
      date: params["date"], 
      amount: params["amount"],
      expense_category_id: params["expense_category_id"],
      user_group_id: params["user_group_id"],
      user_id: current_user.id
      )
    @expense.save

    render "show.json.jbuilder"
  end

  def show
    @expense = Expense.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @expense = Expense.find_by(id: params[:id])
    @expense.description = params["description"] || @expense.description
    @expense.date = params["date"] || @expense.date
    @expense.amount = params["amount"] || @expense.amount
    @expense.expense_category_id = params["expense_category_id"] || @expense.expense_category_id
    @expense.user_group_id = params["user_group_id"] || @expense.user_group_id
    @expense.save

    render "show.json.jbuilder"
  end


  def destroy
    @expense = Expense.find_by(id: params[:id])
    @expense.destroy
    render json: {message: "Expense deleted!"}
  end
end