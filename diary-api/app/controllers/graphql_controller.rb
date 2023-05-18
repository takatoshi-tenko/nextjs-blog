class GraphqlController < ApplicationController
  def execute
    result = ::DiaryAppBackendSchema.execute(
      params[:query],
      variables: params[:variables],
      context: {},
      operation_name: params[:operationName]
    )
    render json: result
  end
end
