class TestsController < ApplicationController
  @@num = 0
  def test
    if @@num < 10
      @@num += 1
      if nil != Workbook.find_by( id:@@num )
        @workbook = Workbook.find( @@num )
      else
        redirect_to tests_check_path
      end
    else
      @@num = 0
      redirect_to tests_result_path
    end
  end

  def check
    if nil != Workbook.find_by( id:@@num )
      @workbook = Workbook.find(@@num )
      @user = User.find(current_user.id)
      if nil != params.dig(:workbook, :answer)
        @workbook.update(answer: params[:workbook][:answer])
        if @workbook.correct_answer == @workbook.answer
          @user.score += 10
          @user.update(score:@user.score)
        end
      end
    end
    redirect_to tests_test_path#,success:'正解'
  end
end
