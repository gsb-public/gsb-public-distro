; Use this file to build a full distribution including Drupal core and the
; GSB Public install profile using the following command:
;
; drush make gsb-public-distro.make <target directory>

api = 2
core = 7.x

projects[drupal][type] = core
projects[drupal][version] = "7.14"

; Add UC Merced profile to the full distribution build.
projects[campuscms_profile][type] = profile
projects[campuscms_profile][version] = 1.x-dev
projects[campuscms_profile][download][type] = git
projects[campuscms_profile][download][url] = git://github.com/gsbitse/gsb-public.git
projects[campuscms_profile][download][branch] = master

