require "net/http"
require "json"

class UniversitiesController < ApplicationController
  def index
    @universities = University.all
    @message = nil
  end

  def search
    @universities = []
    @message = nil
  end

  def results
    country = params[:country].strip
    @universities = University.where(country: country)

    if country.ascii_only?
      if @universities.empty?
        url = "http://universities.hipolabs.com/search?country=#{country}"

        begin
          response = Net::HTTP.get(URI(url))
          universities_data = JSON.parse(response)

          if universities_data.empty?
            @message = "No universities found in #{country}."
          else
            universities_data.each do |university_data|
              University.create(
                name: university_data["name"],
                country: university_data["country"],
                web_page: university_data["web_pages"].first
              )
            end

            @universities = University.where(country: country)
          end
        rescue StandardError => e
          @message = "An error occurred: #{e.message}"
        end
      end
    else
      @message = "Please use only ASCII characters for the country name."
    end

    render :index
  end

  private

  def set_university
    @university = University.find(params[:id])
  end
end
