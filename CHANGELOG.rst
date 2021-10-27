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
