# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_foodulu_session',
  :secret      => '8e7213df7a47dc31e47854dfb853bc2e18a648b1a6e2dd500247d256b91197694c2b778a2b3207e40b109c71614bc09e013d0bb6eb6e71e5e01a9c1b720d34ea'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
