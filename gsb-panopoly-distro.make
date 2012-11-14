`; Use this file to build a full distribution including...
; Drupal core and the Panopoly profile using the following command:
;
; drush make gsb-panopoly-distro.make <target directory>

api = 2
core = 7.x

projects[drupal][type] = core
projects[drupal][version] = "7.17"

; Add Panopoly Profile
projects[gsb_panopoly][type] = profile
projects[gsb_panopoly][download][type] = git
projects[gsb_panopoly][download][url] = https://github.com/gsbitse/gsb_panopoly.git
projects[gsb_panopoly][download][branch] = master
