# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_agile_session',
  :secret      => '13b3864ba04cea46be3f280e535863a29dbe3d6efb116e0348d39bf64b1c26ad11b28cfe5d35b79d0e51a32faa7bae1f536226e66077e7ae2f6a9acc5ce1e553'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
