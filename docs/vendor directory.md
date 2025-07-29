# vendor directory

it's a folder to **manage third-party code**

include external libs and plugins that **enhance functionality** of application

holds javascript files, css, ruby libraries, etc...

alternatively, we use **gems**

plays a critical role on rails **asset pipeline**






## trade-offs

(+) good for holding **modified version** of some gem

(-) **hard** for management and **keep updated**

(-) **isn't common practice** anymore. usually seen on legacy apps




## folder structure:

```ruby
vendor/
├── assets/
│   ├── javascripts/
│   │   └── custom_library.js
│   └── stylesheets/
│       └── custom_styles.css
└── gems/
    └── custom_gem/
        └── lib/
            └── custom_gem.rb
```




## how to include vender lib in the asset pipeline

by doing so we significantly improve our application **load times**

```ruby
# application.js
//= require vender/custom_library
```




# References

- [(article) # The vendor Directory in Ruby on Rails](https://useful.codes/the-vendor-directory-in-ruby-on-rails/)
- [README.md](./../README.md)
- [directory structure](./directory%20structure.md)
