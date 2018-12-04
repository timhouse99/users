class UserAccountsGroupsController < ApplicationController
  before_action :set_user_accounts_group, only: [:show, :edit, :update, :destroy]

  # GET /user_accounts_groups
  # GET /user_accounts_groups.json
  def index
    @user_accounts_groups = UserAccountsGroup.all
  end

  # GET /user_accounts_groups/1
  # GET /user_accounts_groups/1.json
  def show
  end

  # GET /user_accounts_groups/new
  def new
    @user_accounts_group = UserAccountsGroup.new
  end

  # GET /user_accounts_groups/1/edit
  def edit
  end

  # POST /user_accounts_groups
  # POST /user_accounts_groups.json
  def create
    @user_accounts_group = UserAccountsGroup.new(user_accounts_group_params)

    respond_to do |format|
      if @user_accounts_group.save
        format.html { redirect_to @user_accounts_group, notice: 'User accounts group was successfully created.' }
        format.json { render :show, status: :created, location: @user_accounts_group }
      else
        format.html { render :new }
        format.json { render json: @user_accounts_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_accounts_groups/1
  # PATCH/PUT /user_accounts_groups/1.json
  def update
    respond_to do |format|
      if @user_accounts_group.update(user_accounts_group_params)
        format.html { redirect_to @user_accounts_group, notice: 'User accounts group was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_accounts_group }
      else
        format.html { render :edit }
        format.json { render json: @user_accounts_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_accounts_groups/1
  # DELETE /user_accounts_groups/1.json
  def destroy
    @user_accounts_group.destroy
    respond_to do |format|
      format.html { redirect_to user_accounts_groups_url, notice: 'User accounts group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_accounts_group
      @user_accounts_group = UserAccountsGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_accounts_group_params
      params.require(:user_accounts_group).permit(:account_id, :group_id)
    end
end
