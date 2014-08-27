# Install git client
#
class git {
  package { 'git': ensure => present, }
}
