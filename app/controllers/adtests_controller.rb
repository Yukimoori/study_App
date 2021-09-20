class AdtestsController < ApplicationController
  def index
    @workbooks = Workbook.all.order(test_id: "ASC")
  end

  def new
    @workbook = Workbook.new
  end

  def create
    @workbook = Workbook.new(test_id: params[:workbook][:test_id],
                             test:    params[:workbook][:test],
                             correct_answer: params[:workbook][:correct_answer],
                             select_answer1: params[:workbook][:select_answer1],
                             select_answer2: params[:workbook][:select_answer2],
                             select_answer3: params[:workbook][:select_answer3],
                             select_answer4: params[:workbook][:select_answer4])
    if @workbook.test_id.blank?
      @workbook.test_id = Workbook.count + 1
    end
    if @workbook.save
      redirect_to adtests_index_path
    else
      render :new
    end
  end

  def edit
    @workbook = Workbook.find(params[:id])
  end

  def update
    @workbook = Workbook.find(params[:id])
    @workbook.update(test_id: params[:workbook][:test_id],
                      test: params[:workbook][:test],
                      correct_answer: params[:workbook][:correct_answer],
                      select_answer1: params[:workbook][:select_answer1],
                      select_answer2: params[:workbook][:select_answer2],
                      select_answer3: params[:workbook][:select_answer3],
                      select_answer4: params[:workbook][:select_answer4])
    redirect_to adtests_index_path
  end

  def delete
    @workbook = Workbook.new
  end
  #@workbook = Workbook.find_by(id: params[:delete ][:id])

  def destroy
    @workbook = Workbook.find_by(id: params[:id])
    @workbook.destroy
    redirect_to adtests_index_path
  end
end
