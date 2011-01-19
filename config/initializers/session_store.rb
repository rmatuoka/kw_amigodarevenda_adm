# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_kw_amigodarevenda_adm_session',
  :secret      => '3643a9b7fb4017474e1ed64c8a79a246aa052c42d138817d73694ebf4d800e8c3480c943335a754f8c036242b2c7af08662f95f3b9eb024f652b9f828b66b75c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
