module NUSMods
  module Endpoints

    CURRENT_YEAR = 2014
    CURRENT_SEMESTER = 2

    # Returns a Array of all module codes in the given year and semester
    def get_module_codes(year = CURRENT_YEAR, semester = CURRENT_SEMESTER)
      get "#{format_year(year)}/#{semester}/moduleCodes.json"
    end

    # Returns a Hash of all module codes as keys, and its respective module name as values.
    def get_module_codes_with_names(year = CURRENT_YEAR, semester = CURRENT_SEMESTER)
      get "#{format_year(year)}/#{semester}/moduleList.json"
    end

    # Returns a Hash of all faculties as keys, and departments under the respective faculties as values.
    def get_faculty_departments(year = CURRENT_YEAR, semester = CURRENT_SEMESTER)
      get "#{format_year(year)}/#{semester}/facultyDepartments.json"
    end

    # Returns the types of lessons (lecture, tutorial, etc) in a Hash 
    def get_lesson_types
      get "lessonTypes.json"
    end

    def get_module_details(module_code, year = CURRENT_YEAR, semester = CURRENT_SEMESTER)
      get "#{format_year(year)}/#{semester}/modules/#{module_code}.json"
    end

    def get_modules(year = CURRENT_YEAR, semester = CURRENT_SEMESTER)
      get "#{format_year(year)}/#{semester}/modules.json"
    end

  end
end
