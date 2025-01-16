module Api
  module V1
    class JobsController < ApplicationController
      def index
        jobs = Job.all
        # カテゴリフィルタ
        if params[:category].present?
          categories = params[:category].split(",")
          jobs = jobs.where(category: categories)
        end

        # 年収フィルタ
        if params[:salary_min].present?
          jobs = jobs.where("salary >= ?", params[:salary_min].to_i)
        end

        # ページネーション
        # フロント側から ?page=1 のように渡す想定
        page = (params[:page] || 1).to_i
        per_page = 10  # 1ページあたり10件に固定
        total_count = jobs.count

        jobs = jobs.offset((page - 1) * per_page).limit(per_page)

        render json: {
          jobs: jobs.as_json,
          total_count: total_count
        }
      end

      def create
        job = Job.new(job_params)
        if job.save
          render json: job, status: :created
        else
          render json: job.errors, status: :unprocessable_empty
        end
      end

      # def update
      #   job = Job.find(params[:id])
      #   if job.update(job_params)
      #     render json: job
      #   else
      #     render json: { errors: job.errors.full_messages }, status: :unprocessable_entity
      #   end
      # end

      # def destroy
      #   job = job.find(params[:id])
      #   job.destroy
      #   head :no_content
      # end

      private
      def job_params
        params.require(:job).permit(:title, :category, :salary)
      end
    end
  end
end
