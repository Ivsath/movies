# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    @movies = ['Iron Man', 'Superman', 'Spider-Man', 'Batman']
  end
end
