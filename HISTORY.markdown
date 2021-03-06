# History

### 2.5.9, 07.12.2015

* Fixed "cannot read property 'getVideoTracks' of undefined" error
  in case when camera is blocked.

### 2.5.8, 02.12.2015

* Droped files are appended to widget's list of uploaded files
  instead of replacing it.
* Fixed camera revoking in Google Chrome 47.
* New option `multipleMaxStrict`.


### 2.5.7, 01.12.2015

* Crop presets are moved to the top of crop dialog on mobile layout.
* It was impossible to clear widget with both `multiple` and `clearable`
  options after loading a bad group UUID.
* Settings like `cdnBase`, `urlBase`, `socialBase` and `scriptBase`
  now can be relative.

### 2.5.6, 25.11.2015

* New option `UPLOADCARE_PASS_WINDOW_OPEN` to work with Cordova InAppBrowser.
* Added Czech locale.
* Updated Taiwan locale.
* Updated Spanish locale.
* Updated Polish locale.

### 2.5.5, 22.09.2015

* Fixed the dialog disappearing in some cases in the mobile layout.

### 2.5.4, 22.09.2015

* Show remove button on uploading error when widget is clearable.
* Optimize parallel uploading of big amount of files at once.
* Accept `data-crop="true"` as free.

### 2.5.3, 22.09.2015

* New Swedish locale.
* File info pooling optimization. 
* Multipart uploading tuning via settings.

### 2.5.2, 13.09.2015

* File uploading logging via `debugUploads` settings.

### 2.5.1, 01.09.2015

* The choose file button occasionally was not clickable on iOS 8.

### 2.5.0, 24.08.2015

* HTTPS is default protocol for CDN.

### 2.4.4, 20.08.2015

* Fixed `onDialogOpen` event which did not fire when files were dropped. 
* Optimized info loading for files uploaded from URLs.
* Internal `uploadcare.namespace` function accepts namespace name without
  `uploadcare` prefix. I.e. `uploadcare.files.utils` becomes `files.utils`.

### 2.4.3, 19.08.2015

* Fixed uploading from url for large files.

### 2.4.2, 17.08.2015

* Fixes in English, Russian and German locales.

### 2.4.1, 08.08.2015

* `uploadcare.start()` is fixed and accepts global settings again.

### 2.4.0, 23.07.2015

* Built-in jQuery upgraded to 2.1.4. This automatically means that
  widget version with built-in jQuery will no longer work in IE8.
  But we still support IE8 in version without built-in jQuery.
* Uploadcare doesn't expose and doesn't use global `window.JST` object anymore.
  This enhances widget isolation on the page.

### 2.3.5, 11.07.2015

* Prevent infinity loop when multiupload dialog is used with crop with 
  some ratio and uploaded image is already has this ratio.
* Correct reading of EXIF data from some corrupeted JPEGs. 

### 2.3.4, 29.06.2015

* New crop visual style.
* Updated Spanish locale.
* Updated Catalan locale.

### 2.3.3, 23.06.2015

* New Azerbaijan locale.
* New Catalan locale. Incomplete.
* Updated Taiwan locale.
* Updated Turkish locale.

### 2.3.2, 15.06.2015

* jQuery updated to 1.11.3.
* Fixed version with builtin jQuery.

### 2.3.1, 08.06.2015

* Camera are revoked when user switches on another tab if page runs over HTTPS.

### 2.3.0, 05.06.2015

* Clicking to image in dialog led to opening of two crop dialogs in some cases.
* Dialog api change: undocumented `fileColl.onAnyDone`, `fileColl.onAnyFail`
  and `onAnyProgress` become a functions with guarantee of callback execution
  for each object in `fileColl`.

### 2.2.0, 03.06.2015

* New preview page for multiple images (when flag imagesOnly is set).
* Crop now works with multiple files (even when flag imagesOnly is not set).
* New Italian locale.
* Camera tab is hidden for mobile layout now. Mobile devices have camera
  or regular file tab.
* New `widget.onDialogOpen` callback.
* Role plugin removed from built-in jQuery. `@some-role` can't be used anymore
  in selectors passed to API methods. Use `[role="some-role"]` instead.
* Fixed jQuery bug related to promises. https://github.com/jquery/jquery/issues/2013
  Progress was not shown in some cases with crop.
* `uploadcare.initialize()` now initializes widgets in whole document,
  not only 'body' descendants.
* Custom events `#{status}.uploadcare` are fired on widget instead of form.
  (works with built-in jQuery only).

### 2.1.6, 28.05.2015

* Fixed "also choose file from" list on mobile layout.

### 2.1.5, 26.05.2015

* Fixed live initialization (when a new widget is added to the page
  after loading). Broken since 2.1.0.
* Restored compatibility with IE8. Broken since 2.1.0.

### 2.1.4, 18.05.2015

* Traditional Chinese locale (zhTW).
* Hidden tabs (camera, for example) excluded from list of sources on first
  dialog's tab.
* New method in dialog api: `isTabVisible()`.
* New callback in dialog api: `onTabVisibility`. Triggered when some tab is
  showed or hidden.

### 2.1.3, 15.05.2015

* Fixed compatibility with jQuery-ui (internal `sortable` plugin renamed
  to `uploadcareSortble`).

### 2.1.2, 27.04.2015

* Fixed welcome text when public key is not set.

### 2.1.1, 21.04.2015

* Fixed error messages in console in jQuery build.

### 2.1.0, 10.04.2015

* Keyboard navigation.
* Widgets are initialized immediately after page loading, not after 100ms. 
* Role attributes inside the widget were aligned with ARIA.
  The `uploadcare-uploader` role is still used for widget identification.
* Multiple panels's footer is now maintained by panel itself, not by tabs.
  As a result the footer will appear on custom tabs too.  
* New `showTab` and `hideTab` methods for dialog api.
* `uploadcare.globals()` now includes settings from `uploadcare.start()`.
* Removed `white-space: nowrap` around the widget.
* Reduced the number of relatively slow `settings.build`
  and `settings.normalize` calls.

### 2.0.6, 28.03.2015

* Fix exception when multiple files are uploaded simalteniously with 
  `image-shrink` option and uploading is cancelled.

### 2.0.5, 25.03.2015

* Added compatibility with [FastClick](https://github.com/ftlabs/fastclick).
* Warnings from `image-shrink` option are suppressed.

### 2.0.4, 12.03.2015

* Fixed error if validation is failed.
* Fixed error in case of large file with imagesOnly settings
  and files larger than 100 MB in old browsers. 

### 2.0.3, 10.03.2015

* Transparent images are automatically shrinked to PNG.
* Considering `cdnUrlModifiers` when group is loaded.

### 2.0.2, 25.02.2015

* Fixed uploading of large files.

### 2.0.1, 24.02.2015

* Restored compatibility with IE 8-9 and other old browsers.

### 2.0.0, 20.02.2015

**Compatibility breaking changes in this release.**

#### New features and fixes

* Resize images on client before uploading (`image-shrink` option).
* Autostore option was removed (but not autostore itself).
  Now file is automatically stored if the project allows autostore.
* New option `do-not-store`. Use it when autostore is enabled in the project,
  but you don’t want to store files uploaded with a particular widget.
* `uploadcare.Widget` now can return either single or multiple widgets.
* New `uploadcare.SingleWidget` function reproduce old `uploadcare.Widget`
  behavior — it raises an exception on multiple widgets.
* New `sourceInfo` property is added to the info of the files
  uploaded from social sources. At the moment only extended info
  about Instagram files is provided.
* `dialogApi` for custom tabs is now the same object as dialog and panel
  objects. `dialogApi` now supports promise interface, and dialog and panel
  objects have `fileColl`, `addFiles` and `switchTab` properties.
  New method `resolve` is also added.
* Custom tabs constructors now receive tab name as last argument.
* Fix group `cdnUrl` property when group creation is failed.
* Multi-upload widget does not break when `null` value assigned to it.
 
#### Breaking changes

* `path-value` is on by default. Widget will always return file URL,
  not only when crop is used.
* Widget value is no longer cleared when file is failed to upload.
* Input value is no longer cleared when a new uploading is started.
  Previous value remains until upload of a new file is successful.
* `dialogApi.dialog` is removed in favor of `dialogApi` itself, which
  now supports promise interface.
* `dialogApi.done` is part of the promise interface and receives a callback
  (instead of triggering resolving).
  In order to resolve use `dialogApi.resolve`.
* `dialogApi.onSwitched` is removed in favor of `dialogApi.progress`
  and tab name.
* `uploadcare.Circle.listen` now expects progress value to be the first
  argument of `progress` callback.


### 1.5.5, 28.01.2015

* Fixed creation of group with modifiers.

### 1.5.4, 19.01.2015

* Fixed assiging array of files as value to multiple widget.
* Fixed filename and progress indication for piped file objects
  in multiple dialog.
* Fixed progress drawing when progress element size is 0.

### 1.5.3, 30.12.2014

* Fixed the error preventing any file uploading in old versions of
  Google Chrome. Bug was instroduced in 1.5.0.

### 1.5.2, 26.12.2014

* New Arabic locale.
* New file source Huddle (huddle.com).
* Dialog is closed by double click on gray background instead of single click.
* New `uploadcare.closeDialog()` method close current active dialog
  (usefull for single-page applications).

### 1.5.1, 12.12.2014

* Built-in jQuery updated to 1.11.1
* Validators for `openDialog()`, `openPanel()` and `filesFrom`
* Mirror option in camera tab
* Capture highest possible video resolution from camera
* Go to preview tab after camera shot for multiple widget
* Fixed buttons on camera tab for multiple widget
* Fixed video preview on camera tab on Android
* Fixed English locale for camera dialog
* Fixed some typos in the norwegian locale

### 1.5.0, 06.12.2014

* Camera tab
* Progress circle color can be changed through CSS
* Version without built-in jQuery

### 1.4.6, 24.11.2014

* Added Norwegian locale
* Improved iOS scrolling performance in some cases
* Dropbox added to default tabs list (no additional setup is required anymore)
* All default tabs rearranged according to their usage

### 1.4.5, 07.11.2014

* Restored IE8 compatibility.

### 1.4.4, 31.10.2014

* Fix conflict with host pages Pusher. Built-in pusher
  isn't exposed to global namesapse anymore. 

### 1.4.3, 16.10.2014

* Japanese localization.
* French localization updated.
* Use progressive jpeg for preview and crop.

### 1.4.2, 31.08.2014

* Fixed ui freeze in IE 10+ after file choosing.

### 1.4.1, 21.08.2014

* Fixed crop to fixed size when whole image is selected
* Fixed progress indication for files smaller than 1kb
* Added `accept="image/*"` input attribute for images only widgets

### 1.4.0, 30.07.2014

* German localization.
* Retina icons for all social networks.
* Updated "local files" tab for mobile devices.
* Widget works on local pages (without web server).
* `utils` and `t` are no more exposed to file info.
* Fix French and Portuguese locales. 

### 1.3.1, 20.06.2014

* Fixed preview size for wide images in non-webkit browsers.

### 1.3.0, 19.06.2014

* Multiple cropping presets can be added divided by comma. User can choose any.

### 1.2.3, 05.06.2014

* Fixed free crop problem introduced in previous version.

### 1.2.2, 04.06.2014

* Further crop fixes

### 1.2.1, 02.06.2014

* Fixed croping for `minimum` settings and othr rare cases.
* Fixed uploading in IE9- when jQuery not used on page.

### 1.2.0, 22.05.2014

* Added Flickr as a source.
* Added Danish locale.
* Fixed French localization.

### 1.1.0, 08.05.2014

* Added Dutch locale.
* `system-dialog` widget settings.
* Restored compatibility with some old browsers versions.

### 1.0.1, 28.03.2014

* Fixed uploading from url.

### 1.0.0, 21.03.2014

* Mobile version.
* Undocumented `fileFrom('event')` method was removed.
* Page scrolling disabled when dialog is opened.
* Increased active size of crop corners.

### 0.18.3, 05.03.2014

* New widget settings `preferred-types`.
* Fixed tabs order when 'all' or 'default' shortcuts used.
* Fixed transparent images crop.

### 0.18.2, 25.02.2014

* Clear look for close icon.

### 0.18.1, 19.02.2014

* Added Turkish locale.
* Fixed crop on pages with old bootstrap.

### 0.18.0, 10.02.2014

* Widget now is one button "Choose a file".
  Progress circle appears only on uploading.
* Widget adapts to host page: controls size depends on font size only,
  height can be adjusted via line-height.
* Widget always return CDN urls when crop used (similar to path-value option).
* Validators runs every time new file properties available. All unavailable
  properties are null.
* Fixed scrolling on social tabs on touch devices.
* Fixed file size labels.
* Fixed images in multiple preview in IE8.
* Fixed impossible to set null value to widget.
* Removed deprecated `preview()` and `previewUrl` fields of `fileInfo` object.

### 0.17.2, 24.01.2014

* better compatibility with host page markup

### 0.17.1, 13.01.2014

* Large files uploads in parallel by small pieces with automatic recovering
  in case of network errors.
* Requests aborts after user cancels upload.
* Slightly reduced cpu usage during large files uploading.

### 0.17.0, 25.12.2013

* We now support large files uploads. Merry Christmas.

### 0.16.2, 16.12.2013

* Removing file from multiupload preview step no longer closes whole dialog.
  Bug introduced in 0.16.0.

### 0.16.1, 13.12.2013

* Widget.onChange now fires immediately after user chooses file.

### 0.16.0, 02.12.2013

* `uploadcare.openPanel()` method added. It allows open panel with tabs
  embedded in page (no modal mode).
* `uploadcare.registerTab()` method added. Now you can add custom tabs to
  dialogs and panels.
* jQuery version updated to 1.10.2. If you use `uploadcare.jQuery`, please
  check update guide http://jquery.com/upgrade-guide/1.9/
* spelling of `body.uploadcare-dragging` class fixed (it was draging). If you
  use this class, update your code.
* `uploadcare-dragging` class now appear on elements used as target for
  `receiveDrop` and `uploadDrop`

### 0.15.5, 25.11.2013

* Skydrive tab added.

### 0.15.4, 18.11.2013

* Box.com tab added.

### 0.15.3, 05.11.2013

* Fixed bug, do not allow set value while page loading.

### 0.15.2, 30.10.2013

* Widget's width can be easily changed in css.
* Css is now prepended to head, this allows overriding css rules without
  `important` keyword.

### 0.15.1, 17.10.2013

* Tiny replacement of jQuery UI sotrable plugin used. This saves about 12kb
  of gziped widget size for multiupload documents.

### 0.15.0, 16.10.2013

* New settings `clearable` allows user to remove uploaded file from widget.
  It is turned off by default.
* Widget does not cleared if user cancels dialog.

### 0.14.2, 15.10.2013

* Portuguese localization added.
* Minimum and maximum limits for number of files in MultipleWidget added.

### 0.14.1, 14.10.2013

* Chinese localization updated.

### 0.14.0, 11.10.2013

* French localization was added.
* Custom file's validators can be used to restrict user's choice.
* Undocumented method `fileInfo.dimensions()` was removed.
* Undocumented callback `Dialog.uploadDone` was removed.

### 0.13.5, 09.10.2013

* `uploadcare.filesFrom` function exposed in api.

### 0.13.4, 05.10.2013

* Fixed loading from url and social sources. Bug introduced in 0.13.3.

### 0.13.3, 03.10.2013

* Opening speed is significantly impoved for widget with hundreds of files
* Restored compatibility with IE8 and some Firefox versions

### 0.13.2, 30.09.2013

* Translations fixes

### 0.13.1, 26.09.2013

* widget size reduced from 341 to 293 kb (from 104 to 93 kb gziped)

### 0.13.0, 26.09.2013

* Widget no longer accepts urls in `value` HTML-attribute or `value()` method.
  You should use `widget.value(uploadcare.fileFrom('url', 'http://url/'))`.
* Widget now can be used with any custom domain.

### 0.12.5, 23.09.2013

* switch to preview tab right after selecting files
* prevent to request not ready images in multiupload preview

### 0.12.4, 16.09.2013

* `uploadcare.tabsCss` api fixed

### 0.12.3, 13.09.2013

* restrictions on the number of files in multiupload group removed

### 0.12.2, 12.09.2013

* fixed bug introduced in 0.12.0 related to loading info about already uploaded files

### 0.12.1, 12.09.2013

* crop options "upscale" and "minimum" also applicable to ratio
* built-in jQuery (version 1.8.3) now available in `uploadcare.jQuery`

### 0.12.0, 28.08.2013

* new property `originalImageInfo` of `fileInfo` object
* now you can use `fileInfo.cdnUrl` with all operations right after uploading
* traffic and preview delay significantly reduced for large images
* new option for crop — "minimum". Doesn't allows user to select area less
  then you specified

### 0.11.2, 13.08.2013

* add Chinese (Simplified) locale

### 0.11.1, 06.08.2013

* [drag and drop api](https://uploadcare.com/documentation/javascript_api/#drag-and-drop)
* [source tabs styling](https://uploadcare.com/documentation/javascript_api/#sources-style)
* widget size reduced from 455 to 346 kb (from 144 to 105 kb gziped)
* fixed bug when can't upload new file from uploadcare cdn url
* better compatibility with host page markup

### 0.10.1, 11.07.2013

* evernote is supported as a source of files
* if images_only is used, video thumbnails are loaded from the instagram
* fixed bug, preventing some of our clients from using uploadcare with AMD
