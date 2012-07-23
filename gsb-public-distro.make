; Use this file to build a full distribution including Drupal core and the
; GSB Public install profile using the following command:
;
; drush make gsb-public-distro.make <target directory>

api = 2
core = 7.x

projects[drupal][type] = core
projects[drupal][version] = "7.14"

; Add GSB Public profile to the full distribution build.
projects[gsb_public][type] = profile
projects[gsb_public][version] = 1.x-dev
projects[gsb_public][download][type] = git
projects[gsb_public][download][url] = git://github.com/gsbitse/gsb-public.git
projects[gsb_public][download][branch] = master
