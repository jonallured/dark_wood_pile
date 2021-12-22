class HomeController < ApplicationController
  expose(:artwork) { Artwork.last }
end
