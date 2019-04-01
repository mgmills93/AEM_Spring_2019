/*-------------------------------------------------------------------------
 |                                                                         
 |             SAS SUPPLEMENTAL SYNTAX FILE FOR ICPSR 36128
 |                         CENSUS OF JAILS, 2013
 |
 | This SAS program is provided for optional use with the SAS transport
 | version of this data file as distributed by ICPSR. The metadata
 | provided below are not stored in the SAS transport version of this data
 | collection.  Users need to use SAS PROC CIMPORT to import the SAS
 | transport file to a SAS data set on their system. This program can
 | then be used in conjunction with the SAS system data file.
 |
 | DATA:  begins a SAS data step and names an output SAS data set. Users
 | should replace "SAS-dataset" with their name for the SAS data set copied
 | from the SAS transport file. Users can add a SAS libname statement
 | and an output SAS data set name to make a permanent SAS data set.
 |
 | MISSING VALUE RECODES:  sets user-defined numeric missing values to
 | missing as interpreted by the SAS system. Only variables with
 | user-defined missing values are included in this section.
 |
 | If any variables have more than one missing value, they are assigned
 | to the standard missing value of a single period (.) in the statement
 | below. To maintain the original meaning of missing codes, users may want
 | to take advantage of the SAS missing values (the letters A-Z or an
 | underscore preceded by a period).
 |
 | An example of a standard missing value recode:
 |
 |   IF (RELATION = 98 OR RELATION = 99) THEN RELATION = .;
 |
 | The same example using special missing value recodes:
 |
 |    IF RELATION = 98 THEN RELATION = .A;
 |    IF RELATION = 99 THEN RELATION = .B;
 |
 | NOTE:  Users should modify this file to suit their specific needs.
 | The MISSING VALUE RECODES section has been commented out (i.e., '/*').
 | To make this section active in the program, users should remove the SAS
 | comment indicators from this section.
 |
 |------------------------------------------------------------------------*/


* SAS DATA STEP;
DATA;
SET SAS-dataset ;


* USER-DEFINED MISSING VALUES RECODE TO SAS SYSMIS;

/*
   IF (WEEK_FLAG = -1) THEN WEEK_FLAG = .;
   IF (WEEKN = -1) THEN WEEKN = .;
   IF (NONCITZ = -1) THEN NONCITZ = .;
   IF (NONCITZ_FLAG = -1) THEN NONCITZ_FLAG = .;
   IF (CONV = -1) THEN CONV = .;
   IF (CONVUNSENT = -1) THEN CONVUNSENT = .;
   IF (CONVUNSENT_FLAG = -1) THEN CONVUNSENT_FLAG = .;
   IF (CONVSENT = -1) THEN CONVSENT = .;
   IF (CONVSENT_FLAG = -1) THEN CONVSENT_FLAG = .;
   IF (UNCONV = -1) THEN UNCONV = .;
   IF (UNCONVTRIAL = -1) THEN UNCONVTRIAL = .;
   IF (UNCONVTRIAL_FLAG = -1) THEN UNCONVTRIAL_FLAG = .;
   IF (UNCONVHOLD = -1) THEN UNCONVHOLD = .;
   IF (UNCONVHOLD_FLAG = -1) THEN UNCONVHOLD_FLAG = .;
   IF (UNCONVOTHER = -1) THEN UNCONVOTHER = .;
   IF (UNCONVOTHER_FLAG = -1) THEN UNCONVOTHER_FLAG = .;
   IF (FELONY = -1) THEN FELONY = .;
   IF (FELONY_FLAG = -1) THEN FELONY_FLAG = .;
   IF (MISD = -1) THEN MISD = .;
   IF (MISD_FLAG = -1) THEN MISD_FLAG = .;
   IF (OTHEROFF = -1) THEN OTHEROFF = .;
   IF (OTHEROFF_FLAG = -1) THEN OTHEROFF_FLAG = .;
   IF (TOTOFF = -1) THEN TOTOFF = .;
   IF (TOTOFF_FLAG = -1) THEN TOTOFF_FLAG = .;
   IF (MARSHALS = -1) THEN MARSHALS = .;
   IF (MARSHALS_FLAG = -1) THEN MARSHALS_FLAG = .;
   IF (BOP = -1) THEN BOP = .;
   IF (BOP_FLAG = -1) THEN BOP_FLAG = .;
   IF (ICE = -1) THEN ICE = .;
   IF (ICE_FLAG = -1) THEN ICE_FLAG = .;
   IF (BIA = -1) THEN BIA = .;
   IF (BIA_FLAG = -1) THEN BIA_FLAG = .;
   IF (S3Q10A5 = -1) THEN S3Q10A5 = .;
   IF (S3Q10A5_FLAG = -1) THEN S3Q10A5_FLAG = .;
   IF (INSTATEPRIS = -1) THEN INSTATEPRIS = .;
   IF (INSTATEPRIS_FLAG = -1) THEN INSTATEPRIS_FLAG = .;
   IF (OUTSTATEPRIS = -1) THEN OUTSTATEPRIS = .;
   IF (OUTSTATEPRIS_FLAG = -1) THEN OUTSTATEPRIS_FLAG = .;
   IF (TRIBAL = -1) THEN TRIBAL = .;
   IF (TRIBAL_FLAG = -1) THEN TRIBAL_FLAG = .;
   IF (INSTATEJAIL = -1) THEN INSTATEJAIL = .;
   IF (INSTATEJAIL_FLAG = -1) THEN INSTATEJAIL_FLAG = .;
   IF (OUTSTATEJAIL = -1) THEN OUTSTATEJAIL = .;
   IF (OUTSTATEJAIL_FLAG = -1) THEN OUTSTATEJAIL_FLAG = .;
   IF (S3Q10E = -1) THEN S3Q10E = .;
   IF (S3Q10E_FLAG = -1) THEN S3Q10E_FLAG = .;
   IF (PEAKDATE = -1) THEN PEAKDATE = .;
   IF (PEAKPOP = -1) THEN PEAKPOP = .;
   IF (PEAKPOP_FLAG = -1) THEN PEAKPOP_FLAG = .;
   IF (ADPMALE = -1) THEN ADPMALE = .;
   IF (ADPFEMALE = -1) THEN ADPFEMALE = .;
   IF (RELEASEMALE = -1) THEN RELEASEMALE = .;
   IF (RELEASEMALE_FLAG = -1) THEN RELEASEMALE_FLAG = .;
   IF (RELEASEFEMALE = -1) THEN RELEASEFEMALE = .;
   IF (RELEASEFEMALE_FLAG = -1) THEN RELEASEFEMALE_FLAG = .;
   IF (EMONITOR = -1) THEN EMONITOR = .;
   IF (EMONITOR_FLAG = -1) THEN EMONITOR_FLAG = .;
   IF (HOMEDETN = -1) THEN HOMEDETN = .;
   IF (HOMEDETN_FLAG = -1) THEN HOMEDETN_FLAG = .;
   IF (COMMSRV = -1) THEN COMMSRV = .;
   IF (COMMSRV_FLAG = -1) THEN COMMSRV_FLAG = .;
   IF (DAYREPORT = -1) THEN DAYREPORT = .;
   IF (DAYREPORT_FLAG = -1) THEN DAYREPORT_FLAG = .;
   IF (PRETRIAL = -1) THEN PRETRIAL = .;
   IF (PRETRIAL_FLAG = -1) THEN PRETRIAL_FLAG = .;
   IF (ALTWORK = -1) THEN ALTWORK = .;
   IF (ALTWORK_FLAG = -1) THEN ALTWORK_FLAG = .;
   IF (TREATMENT = -1) THEN TREATMENT = .;
   IF (TREATMENT_FLAG = -1) THEN TREATMENT_FLAG = .;
   IF (OTRNONCONF = -1) THEN OTRNONCONF = .;
   IF (OTRNONCONF_FLAG = -1) THEN OTRNONCONF_FLAG = .;
   IF (NONCONFD = -1) THEN NONCONFD = .;
   IF (NONCONFD_FLAG = -1) THEN NONCONFD_FLAG = .;
   IF (COST = -1) THEN COST = .;
   IF (COST_FLAG = -1) THEN COST_FLAG = .;
   IF (CORRSTAFF_FLAG = -1) THEN CORRSTAFF_FLAG = .;
   IF (TOTALSTAFF_FLAG = -1) THEN TOTALSTAFF_FLAG = .;
   IF (CORRWHITE = -1) THEN CORRWHITE = .;
   IF (CORRWHITE_FLAG = -1) THEN CORRWHITE_FLAG = .;
   IF (CORRBLACK = -1) THEN CORRBLACK = .;
   IF (CORRBLACK_FLAG = -1) THEN CORRBLACK_FLAG = .;
   IF (CORRHISP = -1) THEN CORRHISP = .;
   IF (CORRHISP_FLAG = -1) THEN CORRHISP_FLAG = .;
   IF (CORRAIAN = -1) THEN CORRAIAN = .;
   IF (CORRAIAN_FLAG = -1) THEN CORRAIAN_FLAG = .;
   IF (CORRASIAN = -1) THEN CORRASIAN = .;
   IF (CORRASIAN_FLAG = -1) THEN CORRASIAN_FLAG = .;
   IF (CORRNHOPI = -1) THEN CORRNHOPI = .;
   IF (CORRNHOPI_FLAG = -1) THEN CORRNHOPI_FLAG = .;
   IF (CORRTWORACE = -1) THEN CORRTWORACE = .;
   IF (CORRTWORACE_FLAG = -1) THEN CORRTWORACE_FLAG = .;
   IF (CORROTHERRACE = -1) THEN CORROTHERRACE = .;
   IF (CORROTHERRACE_FLAG = -1) THEN CORROTHERRACE_FLAG = .;
   IF (CORRRACEDK = -1) THEN CORRRACEDK = .;
   IF (CORRRACEDK_FLAG = -1) THEN CORRRACEDK_FLAG = .;
   IF (CORRRACETOTAL = -1) THEN CORRRACETOTAL = .;
   IF (CORRRACETOTAL_FLAG = -1) THEN CORRRACETOTAL_FLAG = .;
*/

RUN ;
