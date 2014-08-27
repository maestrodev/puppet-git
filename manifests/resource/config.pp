# Manage user gitconfig.
#
# See git-config (1) for more details.
#
# Parameters
#
#   *user*     - The user in question. Defaults to title.
#  [*ensure*]  - Set or destroy the .gitconfig file. (present|absent)
#  [*group*]   - The user's primary group. Default USER.
#  [*email*]   - The user's email address. Default USER@FQDN
#   *realname* - The user's 'real' name. Default USER
#  [*root*]    - The root directory in which to place .gitconfig. Default /home/USER.
#
define git::resource::config(
  $user     = $title,
  $ensure   = file,
  $group    = $user,
  $email    = "${user}@${::fqdn}",
  $realname = $user,
  $root     = "/home/${title}"
) {
  file { "${root}/.gitconfig":
    ensure  => $ensure,
    owner   => $user,
    group   => $group,
    content => template('git/gitconfig.erb'),
  }
}
