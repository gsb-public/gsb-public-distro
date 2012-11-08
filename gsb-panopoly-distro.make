`; Use this file to build a full distribution including...
; Drupal core and the Panopoly profile using the following command:
;
; drush make gsb-panopoly-distro.make <target directory>

api = 2
core = 7.x

projects[drupal][type] = core
projects[drupal][version] = "7.16"

; Add Panopoly Profile
projects[panopoly][type] = profile
projects[panopoly][version] = 1.x-dev
projects[panopoly][download][type] = git
projects[panopoly][download][url] = http://git.drupal.org/project/panopoly.git
projects[panopoly][download][tag] = 7.x-1.0-rc2

; Patch to remove panopoly demo module from being enabled.
projects[panopoly][patch][remove-panopoly-demo] = https://raw.github.com/gsbitse/gsb-revamp-patches/master/panopoly--remove-panopoly-demo.patch

; Patch to add in the gsb_panopoly module
projects[panopoly][patch][add-gsb-module] = https://raw.github.com/gsbitse/gsb-revamp-patches/master/panopoly--add-gsb-module.patch










