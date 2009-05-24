ActionController::Routing::Routes.draw do |map|
  map.connect ':tenant/items', :controller => 'items'
end
