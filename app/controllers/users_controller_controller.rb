class UsersControllerController < ApplicationController
  def new
  end

  #récupère les informations rentré
  def show
  	#si on rentre un id
  	# if :id.is_a?(Integer)==true
	  	@user = User.find(params[:id])
	  	@userName = @user["username"]
	  	@userBio  = @user["bio"]
	#si on rentre un username
  	# else
  		# puts @user = User.find_by(username: params[:id])
  		# @userName = @user["username"]
	  	# @userBio  = @user["bio"]
  	# end
  end

  def create
  	newuser = User.new(username: params["username"], bio: params["bio"] )
  	newuser.save
  	#si user n'a pas été enregistré
  	if newuser.new_record? == true
  		puts "-"*25, "\tUtilisateur non créé", "-"*25
		redirect_to "/erreur"
  	else
	  	redirect_to "/users/#{newuser.id}"
		puts "-"*25, "\tUtilisateur créé", "-"*25
	end
  end

  def erreur
  end

end
