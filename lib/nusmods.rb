require 'json'
require 'net/http'

class NUSMods

  def fetch_json(url)
    resp = Net::HTTP.get_response(URI.parse(url)) 
    JSON.parse(resp.body) 
  end

  # Returns a Array of all module codes in the given year and semester
  def get_module_codes(year, semester)
    endpoint = "http://api.nusmods.com/#{year}-#{year + 1}/#{semester}/moduleCodes.json"
    begin
      fetch_json(endpoint)
    rescue
      raise "The requested resource is not available for the given year or semester."
    end
  end

  # Returns a Hash of all module codes as keys, and its respective module name as values.
  def get_module_codes_with_names(year, semester)
    endpoint = "http://api.nusmods.com/#{year}-#{year + 1}/#{semester}/moduleList.json"
    begin
      fetch_json(endpoint)
    rescue
      raise "The requested resource is not available for the given year or semester."
    end
  end

  # Returns a Hash of all faculties as keys, and departments under the respective faculties as values.
  def get_faculty_departments(year, semester)
    endpoint = "http://api.nusmods.com/#{year}-#{year + 1}/#{semester}/facultyDepartments.json"
    begin
      fetch_json(endpoint)
    rescue
      raise "The requested resource is not available for the given year or semester."
    end
  end

  def get_lesson_types(year, semester)
    endpoint = "http://api.nusmods.com/#{year}-#{year + 1}/#{semester}/lessonTypes.json"
    begin
      fetch_json(endpoint)
    rescue
      raise "The requested resource is not available for the given year or semester."
    end
  end

  def get_module_details(year, semester, module_code)
    endpoint = "http://api.nusmods.com/#{year}-#{year + 1}/#{semester}/modules/#{module_code}.json"
    begin
      fetch_json(endpoint)
    rescue
      raise "The requested resource is not available for the given year or semester."
    end
  end

  def get_modules(year, semester)
    endpoint = "http://api.nusmods.com/#{year}-#{year + 1}/#{semester}/modules.json"
    begin
      fetch_json(endpoint)
    rescue
      raise "The requested resource is not available for the given year or semester."
    end
  end

end
