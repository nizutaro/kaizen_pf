class FlowsController < ApplicationController

  def create
    @flow = new(flow_params)

  end

  def flow_params
    params.require(:project_id,:name:process_time,:imrovement_flg)
  end
end