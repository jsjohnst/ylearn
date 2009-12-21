# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ylearn_session',
  :secret      => '374abd4ec6f497b78c83ba5f7999382646cb2a4338058d7c598f9ffd58db151b322c396e04f7617dc08352d6ce1dc93655b609615acdb74c18dace9dec136522'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
