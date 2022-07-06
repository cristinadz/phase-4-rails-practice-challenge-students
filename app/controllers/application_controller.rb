class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordNotFound, with: :response_not_found


def response_not_found(e)
    render json: { error: "#{e.model} not found" }
end



end
