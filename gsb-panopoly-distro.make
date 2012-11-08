; Use this file to build a full distribution including...
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

; Patch to remove panopoly demo - https://gist.github.com/4033560
projects[panopoly][patch][remove-panopoly-demo] = https://raw.github.com/gist/4033560/33214b8c717bab968e52fa78914677ba69cab7a6/remove-panopoly-demo.patch

; Patch to add in the gsb_panopoly module
projects[panopoly][patch][gsb-panopoly] = https://raw.github.com/gist/4040953/347565276027bb9fa93c3d49dcb67ec5cfe01145/gsb-panopoly







