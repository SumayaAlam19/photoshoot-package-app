class PackagesController < ApplicationController
    before_action :find_package, only: [:show,:edit,:update,:destroy]
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
        if (@package.save)
            redirect_to @package
        else
            render :new
        end
    end
    def edit
    end
    def update
        @package = Package.new(package_params)
        if (@package.save)
            redirect_to @package
        else
            render :edit
        end
    end
    def destroy
    end

    private

    def package_params
        params.require(:package).permit(:name,:price,:hour,:notes)
    end

    def find_package
        @package = Package.find(params[:id])
    end
end

