; Use this file to build a full distribution including...
; Drupal core, the Panopoly profile and GSB specific features using the following command:
;
; drush make gsb-public-distro.make <target directory>

api = 2
core = 7.x

projects[drupal][type] = core
projects[drupal][version] = "7.17"

; Add GSB Public Profile
projects[gsb_public][type] = profile
projects[gsb_public][download][type] = git
projects[gsb_public][download][url] = https://github.com/gsbitse/gsb_public.git
projects[gsb_public][download][branch] = master
