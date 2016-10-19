class ProjectsController < ApplicationController
     before_action :set_company
     
     before_action :set_project, only: [:show, :edit, :destroy, :update]
    
    
      def index
        @projects = Project.all
      
      end
     
    
      def show
           
      end
    
    
      def new
          @project = @company.projects.build
      end
    
    
      def edit
      end
    
    
      def create
        @project = @Company.projects.build(project_params)
          
        3.times  do
            @project.tasks.build
        end
          
            if @project.save
              redirect_to company_project, notice: 'Project was successfully created.'
              
            else
             render :new 
          
            end
      end
    
    
    
      def update
     
          if @project.update(project_params)
            redirect_to @project, notice: 'Project was successfully updated.' 
             render :show, status: :ok, location: @project 
          else
            render :edit 
          
          end
       
      end
    
    
      def destroy
        @project.destroy
       
         redirect_to company_project, notice: 'Project was successfully destroyed.' 
          
       
      end
    
     private
     
     def set_company
         @company = Company.find(params[:company_id])
     end
     
     def set_project
       @project = @company.projects.find(params[:id])
     end
     
     def project_params
       params.require(:project).permit(:name,:company_id, task_attributes: [:project_id,:name])
      
     end
     

end