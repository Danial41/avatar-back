class EducationsController < ApplicationController

    def create
        education = Education.new(education_params)

        if education.save?
            render json: {success: true, data: education}
        else
            render json: {success: false, message: 'no education was created'}
        end
    end

    def education_params
        params.permit(:school, :specialty, :grade, :start_date, :end_date)
    end
end