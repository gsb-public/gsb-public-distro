; Use this file to build a full distribution including...
; Drupal core, the Panopoly profile and GSB specific features using the following command:
;
; drush make gsb-public-distro.make <target directory>

api = 2
core = 7.x

projects[drupal][type] = core
projects[drupal][version] = "7.56"

; This fixes multiple upload fields in gsb_media_center. http://drupal.org/node/1620030
projects[drupal][patch][1620030] = http://drupal.org/files/issues/1620030-d7-3.patch
projects[drupal][patch][1702132] = http://drupal.org/files/drupal-7.14-ajax-showeffect-not-function-1702132.patch
projects[drupal][patch][1783278] = https://drupal.org/files/issues/schema-relative-1783278-17-D7-do-not-test.patch
projects[drupal][patch][remote_fonts] = https://raw.github.com/gsbitse/gsb-revamp-patches/master/remote_fonts.patch
projects[drupal][patch][gsb-htaccess-rewrites] = https://raw.githubusercontent.com/gsb-public/gsb-revamp-patches/master/gsb-htaccess-rewrites.patch
projects[drupal][patch][1811100] = https://www.drupal.org/files/issues/file_field_ajax_wrapper-1811100-29-D7-do-not-test.patch
projects[drupal][patch][remove-robots] = https://raw.githubusercontent.com/gsb-public/gsb-revamp-patches/master/remove-robots-7.50.patch
projects[drupal][patch][field-labels] = https://drupal.org/files/issues/field-980144-51-D7-do-not-test.patch
projects[drupal][patch][2215857] = https://www.drupal.org/files/issues/ajax-form-2215857-8-D7-do-not-test.patch
projects[drupal][patch][2313539] = https://www.drupal.org/files/issues/2313539-allow-cache-bust-theme-image-1.patch
projects[drupal][patch][image] = https://raw.githubusercontent.com/gsb-public/gsb-revamp-patches/master/image-7.56.patch

; Add GSB Public Profile
projects[gsb_public][type] = profile
projects[gsb_public][download][type] = git
projects[gsb_public][download][url] = git@github.com:gsb-public/gsb_public.git
projects[gsb_public][download][tag] = 6.44.2
