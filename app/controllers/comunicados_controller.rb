class ComunicadosController < ApplicationController
	before_action :set_comunicado, only: [:destroy, :download]
	before_action :authenticate_user!, only:[:create, :new, :destroy]

	# GET /comunicados
	def index
		@comunicados = Comunicado.all
	end

	# GET /comunicados/new
	def new
		@comunicado = current_user.comunicados.new
	end

	# POST /comunicados
	def create
		@comunicado = current_user.comunicados.new(comunicado_params)

		respond_to do |format|
			if @comunicado.save
				format.html { redirect_to comunicados_path, notice: 'Se agrego un comunicado correctamenet' }
			else
				format.html { render :new }
			end
		end
	end

	def download
		send_file  @comunicado.archivo.path, disposition: 'attachment', x_sendfile: true
	end

	# DELETE /comunicados/1
	def destroy
		@comunicado.destroy
		respond_to do |format|
			format.html { redirect_to comunicados_url, notice: 'Se elimino el comunicado de forma correcta' }
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_comunicado
			@comunicado = Comunicado.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def comunicado_params
			params.require(:comunicado).permit(:titulo, :mensaje, :mensaje_markdown, :archivo, :prioridad)
		end
end
