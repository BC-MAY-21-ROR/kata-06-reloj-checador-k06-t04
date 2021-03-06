# frozen_string_literal: true

# Controller Class for Employees
class EmployeesController < ApplicationController
  before_action :validate_url

  def index
    @employee = Employee.where(status: true)
    render layout: 'submenu'
  end

  def new
    @employee = Employee.new
    render layout: 'submenu'
  end

  def create
    employee = Employee.new(employee_params)
    employee.administrator_id = '1'
    employee.status = true
    employee.save
    redirect_to employees_path
  end

  def edit
    set_employees
    render layout: 'submenu'
  end

  def update
    set_employees
    @employee.update(employee_params)
    redirect_to employees_path
  end

  def destroy
    set_employees
    if @employee.status
      @employee.update(status: false)
      flash[:notice] = "Employee #{@employee.name_employee} succesfully disabled."
    end

    redirect_to employees_path
  end

  private

  def employee_params
    params.require(:employee).permit(:employee_number, :name_employee, :email_employee, :position_employee) # , :administrator_id)
  end

  def set_employees
    @employee = Employee.find(params[:id])
  end
end
