class UserAccountsPeopleController < ApplicationController
  before_action :set_user_accounts_person, only: [:show, :edit, :update, :destroy]

  # GET /user_accounts_people
  # GET /user_accounts_people.json
  def index
    @user_accounts_people = UserAccountsPerson.all
  end

  # GET /user_accounts_people/1
  # GET /user_accounts_people/1.json
  def show
  end

  # GET /user_accounts_people/new
  def new
    @user_accounts_person = UserAccountsPerson.new
  end

  # GET /user_accounts_people/1/edit
  def edit
  end

  # POST /user_accounts_people
  # POST /user_accounts_people.json
  def create
    @user_accounts_person = UserAccountsPerson.new(user_accounts_person_params)

    respond_to do |format|
      if @user_accounts_person.save
        format.html { redirect_to @user_accounts_person, notice: 'User accounts person was successfully created.' }
        format.json { render :show, status: :created, location: @user_accounts_person }
      else
        format.html { render :new }
        format.json { render json: @user_accounts_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_accounts_people/1
  # PATCH/PUT /user_accounts_people/1.json
  def update
    respond_to do |format|
      if @user_accounts_person.update(user_accounts_person_params)
        format.html { redirect_to @user_accounts_person, notice: 'User accounts person was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_accounts_person }
      else
        format.html { render :edit }
        format.json { render json: @user_accounts_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_accounts_people/1
  # DELETE /user_accounts_people/1.json
  def destroy
    @user_accounts_person.destroy
    respond_to do |format|
      format.html { redirect_to user_accounts_people_url, notice: 'User accounts person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_accounts_person
      @user_accounts_person = UserAccountsPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_accounts_person_params
      params.require(:user_accounts_person).permit(:account_id, :person_id)
    end
end
