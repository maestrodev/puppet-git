require 'bundler'
Bundler.require(:rake)
require 'rake/clean'

CLEAN.include('spec/fixtures/', 'doc', 'pkg')
CLOBBER.include('.tmp', '.librarian')

require 'puppetlabs_spec_helper/rake_tasks'
require 'puppet_blacksmith/rake_tasks'

require 'puppet-lint/tasks/puppet-lint'
PuppetLint.configuration.send("disable_80chars")
PuppetLint.configuration.fail_on_warnings = true
PuppetLint.configuration.relative = true

task :default => [:clean, :lint, :spec]
