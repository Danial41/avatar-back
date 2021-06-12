class ExperiencesController < ApplicationController

    def create
        education = Experience.new(experience_params)

        if education.save?
            render json: {success: true, data: education}
        else
            render json: {success: false, message: 'no education was created'}
        end
    end

    def experience_params
        params.permit(:company_name, :position, :start_date, :end_date, :responsibilities)
    end
end