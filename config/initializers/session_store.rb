# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tartar-sauce_session',
  :secret      => '7cb37b38a5942eb4684486a93dd738fb51d2deca5de6a4559e5f5e0f63c5162613824542ca5b493a0d326675695c6c2d48bfca3683a5ad3a5b72137bde0f1df7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
