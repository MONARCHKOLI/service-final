class ContractorsController < ApplicationController
    before_action :authorize

    def cool

    end
    def index
        @contractors = Contractor.all
        @tasks = Task.all
    end
    def login
        @contractor = Contractor.first
    end
    def show
        @contractor = Contractor.find(params[:id])
    end
    def new
        # @contractor = Contractor.new
    end
    def create
        # @contractor = Contractor.create(contractor_params)
        # if @contractor.save
        #     flash[:notice] = "Contratulations for creating yourself as a contractor"
        #     redirect_to @contractor
        # else
        #     flash[:notice] = "Sorry please try again..."
        #     render :new, status: :unprocessable_entity
        # end
        @contractor = Contractor.new(contractor_params)
        if contractor.save
            session[:contractor_id] = contractor.id
            redirect_to '/'
        else
            redirect_to '/signup'
        end
    end
    def edit
        @contractor = Contractor.find(params[:id])
    end
    def update
        @contractor = Contractor.find(params[:id])

        if @contractor.update(contractor_params)
            flash[:notice] = "Updating Profile Sucessfully"
            redirect_to @contractor
        else
            redirect_to :edit, status: :unprocessable_entity
        end
    end
    def destroy
        @contractor = Contractor.find(params[:id])
        @contractor.destroy

        redirect_to root_path, status: :see_other
    end
    private
    def contractor_params
        params.require(:contractor).permit!
    end

end
