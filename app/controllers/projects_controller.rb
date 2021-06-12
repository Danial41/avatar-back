class ProjectsController < ApplicationController
    def create
        user = User.find(project_params[:user])
        project_params[:user] = user
        project = Project.new({option: project_params[:option], user: user, name: project_params[:name], image: project_params[:image]})
        if project.save
            project_serializer = parse_json project
            render json: {success: true, data: project_serializer}
        else
            render json: {success: false, error: project.error.full_messages}
        end
    end

    private

    def project_params
        params.permit(:option, :name, :user, :image)
    end
end
