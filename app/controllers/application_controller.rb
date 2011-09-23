
# Alle (eigenen) Controller erben von dieser Klasse.
# Das heisst, aller Code, den man hier reinschreibt, kann von den anderen Controllern (hier: group_entries und words) automatisch mitverwendet werden.
class ApplicationController < ActionController::Base
  protect_from_forgery
end
