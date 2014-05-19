require 'json'
require 'net/http'

class NUSMods

  def fetch_json_at(url)
    resp = Net::HTTP.get_response(URI.parse(url)) 
    JSON.parse(resp.body) 
  end

  def send_get_request_to(endpoint)
    begin
      fetch_json_at endpoint
    rescue
      raise "The requested resource is not available for the given year or semester."
    end
  end

  # Returns a Array of all module codes in the given year and semester
  def get_module_codes(year, semester)
    send_get_request_to "http://api.nusmods.com/#{year}-#{year + 1}/#{semester}/moduleCodes.json"
  end

  # Returns a Hash of all module codes as keys, and its respective module name as values.
  def get_module_codes_with_names(year, semester)
    send_get_request_to "http://api.nusmods.com/#{year}-#{year + 1}/#{semester}/moduleList.json"
  end

  # Returns a Hash of all faculties as keys, and departments under the respective faculties as values.
  def get_faculty_departments(year, semester)
    send_get_request_to "http://api.nusmods.com/#{year}-#{year + 1}/#{semester}/facultyDepartments.json"
  end

  # Returns the types of lessons (lecture, tutorial, etc) in a Hash 
  def get_lesson_types(year, semester)
    send_get_request_to "http://api.nusmods.com/#{year}-#{year + 1}/#{semester}/lessonTypes.json"
  end

  def get_module_details(year, semester, module_code)
    send_get_request_to "http://api.nusmods.com/#{year}-#{year + 1}/#{semester}/modules/#{module_code}.json"
  end

  def get_modules(year, semester)
    send_get_request_to "http://api.nusmods.com/#{year}-#{year + 1}/#{semester}/modules.json"
  end

end
