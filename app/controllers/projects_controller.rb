class ProjectsController < ApplicationController
    def index
        @projects = Project.all
    end

    def show
        
    end

    def new
        @project = Project.new
    end

    def create 
        @project = Project.new(project_params)

        if @project.save
            render json: "Datos guardados"
        else
            render json: "Error al guardar los datos"
        end
    end

    private 
    def project_params
        params.require(:project).permit(:title, :description, :config)
    end
end
