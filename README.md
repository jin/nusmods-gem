A ruby wrapper for the NUSModsAPI (v0.0.4)
---

### Disclaimer 

This gem is not maintained by the creator of NUSMods.

NUSModsAPI repository: [https://github.com/nusmodifications/nusmods-api](https://github.com/nusmodifications/nusmods-api)

---

### Installation

```sh
gem install nusmods
```

or add this line into your `Gemfile`

```
gem 'nusmods'
```

then, run `bundle install`.

### Changes in 0.0.4

- Switched Faraday to HTTParty.

### Usage

```rb
require 'nusmods' # => true
client = NUSMods::Client.new #  => #<NUSMods::Client:0x007f85928efb10 @base_url="http://api.nusmods.com/">
```

### Endpoints

All methods are set to retrieve the current AY's records if you do not provide
any parameters for year or semester.

Every response is either an `Array` or a `Hash` object.

Example:
```ruby
client.get_module_details("MA1101R").keys
 => ["ModuleCode", "ModuleTitle", "Department", "ModuleDescription",
"ModuleCredit", "Workload", "Prerequisite", "Preclusion", "ExamDate", "Types",
"Lecturers", "IVLE", "Timetable", "CorsBiddingStats", "LecturePeriods",
"TutorialPeriods"]
```

#### Faculty Departments

Retrieves the list of faculty departments/sub-departments in a `Hash`.

```ruby
client.get_faculty_departments(year = 2014, semester = 1)

# => {"Arts & Social Sciences"=>["Centre For Language Studies", "Chinese Studies", "Communications And New Media", "Dean's Office (Arts & Social Sc.)", ...
```

#### Lesson Types

Retrieves a list of the types of lessons in a `Hash`. This API call is not tied to a
specific AY or semester.

```rb
client.get_lesson_types
# => {"DESIGN LECTURE"=>"Tutorial", "LABORATORY"=>"Tutorial", "LECTURE"=>"Lecture" ... 
```

#### Module codes

Retrieves a list of all module codes offered in the semester in an `Array`.

```ruby
client.get_module_codes(year = 2014, semester = 1)
# => ["ACC1002", "ACC1002X", "ACC2002", "ACC3601", "ACC3602", ...
```

#### Module codes with names

Retrieves a list of all module codes accompanied by their names in an `Array`.

```ruby
client.get_module_codes_with_names(year = 2014, semester = 1)
# => {"ACC1002"=>"Financial Accounting", "ACC1002X"=>"Financial Accounting", "ACC2002"=>"Managerial Accounting" ...
```

#### Module details

Retrieves all information about a specific module in a `Hash`

```ruby
client.get_module_details("MA1101R", year = 2014, semester = 1)
# => {"ModuleCode"=>"MA1101R", "ModuleTitle"=>"Linear Algebra I", "Department"=>"Mathematics", ...
```

#### All modules

Retrieves all information about every module in an `Array`. 
Note: This retrieves a large dataset, so it will take a while. It is highly
suggested that you download a copy from the API directly and store it locally.

```ruby
client.get_modules(year = 2014, semester = 1)
# => [{ "ModuleCredit" => "4", "ModmavenTree" => { "name" => "ACC1002", "children" => [] }, "LockedModules" => [ "FIN3113", "ACC2002", "IS5116", "FIN2004", ...
```

For exact response examples or more details, see [NUSMods API's README.][1]


  [1]: https://github.com/nusmodifications/nusmods-api/blob/master/README.md


### Tests:

```sh
gem install rspec
rspec spec/nusmods.rb
```

### License

http://opensource.org/licenses/MIT
