class PackagesController < ApplicationController
    before_action :find_package, only: [:show,:edit,:update,:destroy]
    before_action :authenticate_user!, only: [:new,:create,:edit,:update,:destroy]
    before_action :check_user, only: [:edit,:update,:destroy]

    def index
        @packages =Package.all
    end

    def show
    end

    def new
        @package = Package.new
    end

    def create
        @package = Package.new(package_params)
        @package.user_id = current_user.id
        if @package.save
            redirect_to @package
        else
            render :new
        end
    end

    def edit
    end

    def update
        @package = Package.find(params[:id])      
        if @package.update(package_params)
          redirect_to @package
        else  
          render 'edit'
        end
      end

    def destroy
        @package.delete

        redirect_to packages_path
    end

    def payment
    end

    private

    def package_params
        params.require(:package).permit(:name,:price,:hours,:notes,:picture)
    end

    def find_package
        @package = Package.find(params[:id])
    end

    def check_user
        if current_user != @package.user
          redirect_to root_url, alert: "You don't have permission to update or delete listing!"
        end
      end
end

