=========================
imio-townstreet changelog
=========================
:App involved: iA.Téléservices, Publik, iA.Tech, e-Atal, FixMyStreet (BeWaPP)
:Info: This is the changelog for the imio-townstreet package
:Authors: iA.Téléservices
:License: GPLv2
:Last change date: 2021-04-23
:Current version: 0.0.5

Version History
===============

0.0.66
* [TOWS-128] use addinfo instead of form_comment or form_var_reporter_comment in ack mail [nhi]
* [TOWS-129] remove mention of verviers from comment [nhi]
* [TOWS-127] Update latest python declaration to use django [dmshd]
* [TOWS-127] Remove pic4,5,6 cause they do not exist anymore [dmshd]
* [TOWS-127] Add missing webservice for pic3 [dmshd]
* [SUP-26690] Improve map hint to prevent support [dmshd]
* [TOWS-125] Relabel street + number fields [dmshd]
* [TOWS-131] Properly implement postal code restriction option [dmshd]
* [TOWS-132] Add form_option to make the end mail notification conditionnal [dmshd]

0.0.65
* [SUP-26456] change python expression to django when sending images to iA.Tech [nhi]

0.0.64
* [MTELEBLAA-34] fix syntax error in mail [dmshd]

0.0.63
* [MTELEBLAA-34] Add new "donnée de traitement" that will contain Atal comments [dmshd]

0.0.62
* [MTELEBLAA-34] properly display atal comments on refused mail notif [dmshd]

0.0.61
* [SUP-25729] Fix attachment piece missing using Django instead of Python [dmshd]

0.0.60
* [TOWS-123] Display tracking code only to connected user to avoid frustrated users [dmshd]

0.0.59
* Added: flyTo btn (link to help recenter the map on desktop when geoloc is wrong) [dmshd]
* [TOWS-108] Do not send mail when data comes from FixMyStreet
* [TOWS-106] Add option to allow agent to specify Pic 1 as optional
* [TOWS-107] display all form on 1 page
* [TOWS-42] add option to allow agent select with main categories display in the form
* [TOWS-60] Define hint, rename label
* [TOWS-54] Avoid being stuck when selecting a road/place who does not have postal code in OpenStreetMap

0.0.58
* [TOWS-54] Changed : Avoid being stuck when selecting a road/place who does not have postal code in OpenStreetMap
* [TOWS-60] Added/Changed : Define hint, rename label
* [MTELEFONA-10]  map field : fix initial zoom too small [dmshd]
* [SUP-23324] now hide error on traitment panel [dmshd]

0.0.57
* [TOWS-103] Added : missing cache duration and description [dmshd]
* [TOWS-103] Update : add 'refused' comment from ATAL in mail-template [dmshd]
* [TOWS-103] Update : set timeout to daily for iA.Tech (20min was init for dev) [dmshd]

0.0.56
   * Fixed: additional information did not appears in issues [dmshd]
   * Changed: remove "Votre commentaire : " in description because the description is showed for both citizens and city employees [dmshd]
   * Changed: set "Message dans l'historique" containing description appears to both citizens and city employees [dmshd]

0.0.55
   * Added: datasource of iA.Tech services [nhi]
   * Added: form_option in atalv6 workflow for selecting iA.Tech requesting service [nhi]
   * Update: overall update of atalv6 workflow [nhi]

0.0.54
   * Changed : display of the alert's location [nhi]
   * Changed : geetings in mail [nhi]

0.0.53
    * Fixed : description in atal6 [nhi]
    * Added : field number for public lighting [nhi]
    * Added : send number of public lighting to atal in both wf [nhi]

0.0.52
    * Update : automatize user's notification [nhi]
    * Removed : customised part of user's notification email [nhi]
    * Fixed : Apims url in workflow atal6 [nhi]
    * Fixed : environment description [nhi]
    * Removed : pics 4 to 6 webservices in workflow atal5 [nhi]
    * Fixed : typo in form [nhi]

0.0.51
    * Fix : datasource use default value url in case of empty string [nhi]
    * Update : default datasources url is now api.imio.be [nhi]
    * Update : form fields [nhi]

0.0.50
    * Added : environment variable on worflows [nhi]

0.0.49
    * Added : datasource to select environment [nhi]
    * Update : workflow atal6 to use environment option [nhi]
    * Update : form to select environment as option [nhi]
    * Update : cat, subcat and issues datasources now use environment variable [nhi]
    * Removed : all wscalls, not used anymore [nhi]

0.0.48
    * Added : datasource for subcategories [nhi]
    * Update : subcategory fields for using the new datasource [nhi]

0.0.47
    * Added : webservices that notifies fms about the resolution's status [nhi]

0.0.46
    * Added : global actions to resubmit a workrequest or images attached [dmshd]

0.0.45
    * Removed : default position in map field [dmshd]

0.0.44
    * Removed : duplicates of custom view [dmshd]

0.0.43
    * Removed : old datasources not used anymore [dmshd]

0.0.42
    * remove bold from mail template closed in e-atal
    * use correct variable of work request response
    [nhi]

0.0.41
    * do not display subcategory and object fields if others was chosen
    [nhi]

0.0.40
    * invert object and additional info fields
    [nhi]

0.0.39
    * specify version in setup method
    * set install path in jenkinsfile
    [nhi]

0.0.38
    * set author to iA.Teleservices team
    * use iateleservicesCreateDeb pipeline function
    [nhi]

0.0.37
    * [TOWS-65] add thanks alert to user after signal submission

0.0.36
    * delete field in double (origin_source) in form

0.0.35
    * [INFRA-4003] [TELE-1119] add -k to avoid SSL error following the Infra advice about that

0.0.34
    [MTELEBLAA-27] Fix bug occuring when report is not made clicking on the map (lack of geodata)

0.0.33
    [MTELEOLNA-6] remove dev global actions not necessary anymore

0.0.32
    * [TOWS-1] add wscalls

0.0.31
    * [TOWS-1] add last updated working version of the form

0.0.30
    * [TOWS-1] update description

0.0.29
    * [TOWS-1] update to make python tests work too

0.0.28
    * back to multi-pages

0.0.27
    * ignore deb files and vscode workspace
    * [TOWS-52] add more requesters

0.0.26
    * [TOWS-60] rename map field label and add a hint

0.0.25
    * [TOWS-52] add missing datasource for requester feature (identify the requester)

0.0.23
    * [TOWS-52] add requester feature (identify the requester)

0.0.22
    * [TOWS-48] fix mistake in a mail-template

0.0.21
    * [TOWS-47] add custom_view (tableau de traitement) [dmu]
      https://support.imio.be/browse/TOWS-47

0.0.20
    * [TOWS-17] fix subcat not appearing in atal6 and some webservice parameters [dmu]

0.0.19
    * [TELE-933] Jenkins : clean workspace only if success [dmu]

0.0.18
    * [TOWS-17] add last upgrades following chaumont-gistoux setup [dmu]

0.0.17
    * [TOWS-17] add atal connector to setup to avoid doing it manually [dmu]

0.0.16
    * [TOWS-17] fix attachment2 var [dmu]

0.0.15
    * [TOWS-1] add cleanWs() to fix workspace not cleaned [bsu]

0.0.14
    * [TOWS-17] upgrade for ATAL 6 [dmu] [nhi]
    https://support.imio.be/browse/TOWS-17


0.0.13
    * add missing passerelle module [dmu]

0.0.12
    * [TOWS-33] remove connectors from wscalls folder [dmu]

0.0.11
    * [TOWS-33] add connectors in passerelle folder [dmu]

0.0.10
    * [TOWS-33] add connectors [dmu]

0.0.9
    * [TOWS-33] fix error in bash install file [dmu]

0.0.8
    * [TOWS-33] try to put connectors in wscall folders [dmu]

0.0.7
    * [TOWS-33] init forms, workflows, mail-templates [dmu]

0.0.6
    * [INFRA-3644] restore find_package() in setup.py [bsu, dmu]

0.0.5
    * [TOWS-33] restore blank init file (python package) [dmu]

0.0.4
    * [TOWS-33] add passerelle folder to MANIFEST.in [dmu]

0.0.3
    * [TOWS-33] Init changelog
