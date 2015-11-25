class HelloController < ApplicationController
skip_before_action :verify_authenticity_token

	def index
    # render text: "INDEX"
		@groupes=Groupe.all
	end

	def index2
   render text: params[:ids]
 #    render plain: "INDEX"
		end
  
  def post
  	render file: jjson, content_type: "application/json"
  #	render text: params[:p1]+" "+params[:p2]+"!"
  end

    def create
  	render text: params[:p1]+" "+params[:p2]+"!"
  	  end

      def client
  	  end

def client_post
	   @client = params[:client]
	   render text: @client[:name]+', '+@client[:phone]+', '+@client[:address][:postcode]+','
    # render text: "Client post"
  	  end

   def bar
   	render text: params[:foo]
  	  end



end
