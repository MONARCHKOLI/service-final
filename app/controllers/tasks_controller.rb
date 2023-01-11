class TasksController < ApplicationController
    def create
        @contractor = Contractor.find(params[:contractor_id])
        @task = @contractor.tasks.create(task_params)
        puts @task
        redirect_to contractor_path(@contractor)
    end

    def destroy
        @contractor = Contractor.find(params[:contractor_id])

        @task = @contractor.tasks.find(params[:id])
        
        @task.destroy
        
        redirect_to contractor_path(@contractor), status: :see_other
    end

    private
    def task_params
        params.require(:task).permit(:category,:description,:amount,:status)
    end
end
