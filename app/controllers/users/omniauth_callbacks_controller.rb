class Users::OmniauthCallbacksController < ApplicationController
  def facebook
    auth = request.env["omniauth.auth"]

    unless @user = User.where(provider: auth.provider, uid: auth.uid).first
      @user = User.create(
                          provider:         auth.provider,
                          uid:              auth.uid,
                          name:             auth.info.name,
                          email:            auth.info.email,
                          password:         Devise.friendly_token[0,20],
                          oauth_token:      auth.credentials.token,
                          oauth_expires_at: auth.credentials.expires_at
                        )
    end

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
    end
  end
end
