class ChintaisController < ApplicationController
  before_action :set_chintai, only: %i[ show edit update destroy ]

  def index
    @chintais = Chintai.all
  end

  def new
    @chintai = Chintai.new
    2.times { @chintai.routeinfos.build }
  end

  def create
    @chintai = Chintai.new(chintai_params)
    if @chintai.save
      redirect_to chintais_path, notice: "物件を登録しました"
    else
      2.times { @chintai.routeinfos.build }
      render :new
    end
  end

  def show
      @routeinfos = @chintai.routeinfos
  end

  def edit
      @chintai.routeinfos.build
  end

  def update
    if @chintai.update(chintai_params)
      redirect_to chintais_path, notice: "物件を編集しました"
    else
      @chintai.routeinfos.build
      render :edit
    end
  end

  def destroy
    @chintai.destroy
    redirect_to chintais_path, notice: "削除しました"
  end

  private

    def set_chintai
      @chintai = Chintai.find(params[:id])
    end

    def chintai_params
      params.require(:chintai).permit(:rentname, :wage, :address, :age, :remarks,
                        routeinfos_attributes: [:id,:railroad, :station, :foot, :chintai_id, :_destroy])
    end
end
