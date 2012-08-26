require "page-object"

class ParkCalcPage
  include PageObject

  page_url "http://www.shino.de/parkcalc/index.php"

  text_field :entry_date,   id: "StartingDate"
  text_field :entry_time,   id: "StartingTime"
  radio_button :entry_am, name: "StartingTimeAMPM", value: "AM"
  radio_button :entry_pm, name: "StartingTimeAMPM", value: "PM"

  text_field :leaving_date, id: "LeavingDate"
  text_field :leaving_time, id: "LeavingTime"
  radio_button :leaving_am, name: "LeavingTimeAMPM", value: "AM"
  radio_button :leaving_pm, name: "LeavingTimeAMPM", value: "PM"

  select_list :parking_lot, id: "ParkingLot"

  button :calculate, name: "Submit"

  element :estimated_cost, nil, xpath: "//span[@class='SubHead']/b"

  def entry_am_pm=(entry_am_pm)
    case entry_am_pm
    when "AM"
      self.select_entry_am
    when "PM"
      self.select_entry_pm
    end
  end

  def leaving_am_pm=(leaving_am_pm)
    case leaving_am_pm
    when "AM"
      self.select_leaving_am
    when "PM"
      self.select_leaving_pm
    end
  end
end
