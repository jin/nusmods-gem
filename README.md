rubygem for the NUSModsAPI
---

---

### Disclaimer 

This gem is not maintained by the creator of NUSMods. It is still
at the conceptualization stage; more features will be added in due time.

NUSModsAPI repository: https://github.com/ahbeng/NUSModsAPI

---

This rubygem aims to provide an easier way to fetch data from the NUSMods API,
especially if you're building ruby apps.

### Installation:

```sh
gem install nusmods
```

### Usage:

```rb
2.1.1 :001 > require 'nusmods'
 => true
2.1.1 :002 > nm = NUSMods.new
 => #<NUSMods:0x00000101186670>
2.1.1 :003 > nm.get_
nm.get_faculty_departments      nm.get_module_codes_with_names
nm.get_lesson_types             nm.get_module_details
nm.get_module_codes             nm.get_modules
2.1.1 :003 > nm.get_module_details(2013, 2, "CS2020")
 => {"ModuleCode"=>"CS2020", "ModuleTitle"=>"Data Structures and Algorithms Accelerated", "Department"=>"COMPUTER SCIENCE", "ModuleDescription"=>"This module is an accelerated version that combines CS1020 and CS2010. It continues the introduction in CS1010, and emphasises object-oriented programming with application to data structures. Topics covered include object-oriented p..
```

### Methods:

All `get_` methods takes in parameters in the following order: `year`, `semester`, except for `get_module_details`, which takes in `year`, `semester`, and `module_code`. 

#### Parameters:

* `year`: the beginning year of the AY. e.g. `2012` for AY 2012/2013.
* `semester`: the respective semester. e.g. `(1, 2, 3: special term 1, 4: special term 2)`.
* `module_code`: the official module code as a string. e.g. `"CS1101S"`

For more details, see [NUSModsAPI's README.][1]


  [1]: https://github.com/ahbeng/NUSModsAPI/blob/master/README.md`


### Tests:

```sh
gem install rspec
rspec spec/nusmods.rb
```
