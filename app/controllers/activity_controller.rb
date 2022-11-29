class ActivityController < ApplicationController

    def index
        activities = Activity.all
        render json: activities
    end

    def show
        camper_activities = Activity.find(params[:id])
        render json: camper_activities
    end

    def delete
        if Activity.find(params[:id])
            deleted = Activity.find(params[:id]).destroy
            render json: deleted
        else
            render json: { errors: "Activity not found" }
        end

    end

end
