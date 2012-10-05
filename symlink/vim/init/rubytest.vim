" RubyTest plugin setup
let g:rubytest_in_quickfix = 0
let g:rubytest_cmd_test = "bundle exec ruby %p"
let g:rubytest_cmd_testcase = "bundle exec ruby %p -n '/%c/'"
let g:rubytest_cmd_spec = "bundle exec rspec -f progress --color %p"
let g:rubytest_cmd_example = "bundle exec rspec -f progress --color %p:%c"
let g:rubytest_cmd_feature = "bundle exec cucumber %p"
let g:rubytest_cmd_story = "bundle exec cucumber %p -n '%c'"

