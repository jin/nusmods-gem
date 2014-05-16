rubygem for the NUSModsAPI
---

---

Disclaimer: This gem is not maintained by the creator of NUSMods. It is still
at the conceptualization stage; more features will be added in due time.

NUSModsAPI repository: https://github.com/ahbeng/NUSModsAPI

---

This rubygem aims to provide an easier way to fetch data from the NUSMods API,
especially if you're building ruby apps.

Installation:

```sh
gem install nusmods
```

Usage:

```rb
2.1.1 :001 > require 'nusmods'
 => true
2.1.1 :002 > nm = NUSMods.new
 => #<NUSMods:0x00000101186670>
2.1.1 :003 > nm.get_
nm.get_faculty_departments      nm.get_module_codes_with_names
nm.get_lesson_types             nm.get_module_details
nm.get_module_codes             nm.get_modules
```

Methods:

See [NUSModsAPI's README.][1]


  [1]: https://github.com/ahbeng/NUSModsAPI/blob/master/README.md`
