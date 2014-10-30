A ruby wrapper for the NUSModsAPI
---

### Disclaimer 

This gem is not maintained by the creator of NUSMods.

NUSModsAPI repository: https://github.com/ahbeng/NUSModsAPI

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

```rb
client.get_faculty_departments(year = 2014, semester = 1)
```

#### Lesson Types

Retrieves a list of the types of lessons in a `Hash`. This API call is not tied to a
specific AY or semester.

```rb
client.get_lesson_types
```

#### Module codes

Retrieves a list of all module codes offered in the semester in an `Array`.

```rb
client.get_module_codes(year = 2014, semester = 1)
```

#### Module codes with names

Retrieves a list of all module codes accompanied by their names in an `Array`.

```rb
client.get_module_codes_with_names(year = 2014, semester = 1)
```

#### Module details

Retrieves all information about a specific module in a `Hash`

```rb
client.get_module_details("MA1101R", year = 2014, semester = 1)
```

#### All modules

Retrieves all information about every module in an `Array`. 
Note: This retrieves a large dataset, so it will take a while. It is highly
suggested that you download a copy from the API directly and store it locally.

```rb
client.get_modules(year = 2014, semester = 1)
```

For exact response examples or more details, see [NUSModsAPI's README.][1]


  [1]: https://github.com/ahbeng/NUSModsAPI/blob/master/README.md


### Tests:

```sh
gem install rspec
rspec spec/nusmods.rb
```

### License

http://opensource.org/licenses/MIT
