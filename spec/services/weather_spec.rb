require 'rails_helper'

describe Weather do
  it "returns a 200 success header when the API call is made" do
    response = Weather.get_weather_test
    expect(response.code).to(eq(200))
  end

  it "returns rain when the API call is made" do
    response = Weather.get_weather_test
    expect(response["weather"][0]["main"]).to_not(eq(nil))
  end
end
