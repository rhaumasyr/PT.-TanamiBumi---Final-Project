﻿/*---------------------------------------------------------
  The options statement below should be placed
  before the data step when submitting this code.
---------------------------------------------------------*/
options VALIDMEMNAME=EXTEND VALIDVARNAME=ANY;


/*---------------------------------------------------------
  Before this code can run you need to fill in all the
  macro variables below.
---------------------------------------------------------*/
/*---------------------------------------------------------
  Start Macro Variables
---------------------------------------------------------*/
%let SOURCE_HOST=<Hostname>; /* The host name of the CAS server */
%let SOURCE_PORT=<Port>; /* The port of the CAS server */
%let SOURCE_LIB=<Library>; /* The CAS library where the source data resides */
%let SOURCE_DATA=<Tablename>; /* The CAS table name of the source data */
%let DEST_LIB=<Library>; /* The CAS library where the destination data should go */
%let DEST_DATA=<Tablename>; /* The CAS table name where the destination data should go */

/* Open a CAS session and make the CAS libraries available */
options cashost="&SOURCE_HOST" casport=&SOURCE_PORT;
cas mysess;
caslib _all_ assign;

/* Load ASTOREs into CAS memory */
proc casutil;
  Load casdata="79236 - Rhauma Syira - Forest___Crop_1.sashdat" incaslib="Models" casout="79236 - Rhauma Syira - Forest___Crop_1" outcaslib="casuser" replace;
Quit;

/* Apply the model */
proc cas;
  fcmpact.runProgram /
  inputData={caslib="&SOURCE_LIB" name="&SOURCE_DATA"}
  outputData={caslib="&DEST_LIB" name="&DEST_DATA" replace=1}
  routineCode = "

   /*------------------------------------------
   Generated SAS Scoring Code
     Date             : 29May2024:05:29:14
     Locale           : en_US
     Model Type       : Forest
     Interval variable: Annual_Rainfall
     Interval variable: Area
     Interval variable: Crop_Year
     Interval variable: Fertilizer
     Interval variable: Pesticide
     Class variable   : Crop
     Class variable   : Season
     Response variable: Crop
     ------------------------------------------*/
declare object 79236 - Rhauma Syira - Forest___Crop_1(astore);
call 79236 - Rhauma Syira - Forest___Crop_1.score('CASUSER','79236 - Rhauma Syira - Forest___Crop_1');
   /*------------------------------------------*/
   /*_VA_DROP*/ drop 'I_Crop'n 'P_CropCoconut'n 'P_CropPotato'n 'P_CropRice'n 'P_CropSugarcane'n 'P_CropWheat'n;
length 'I_Crop_2533'n $21;
      'I_Crop_2533'n='I_Crop'n;
'P_CropCoconut_2533'n='P_CropCoconut'n;
'P_CropPotato_2533'n='P_CropPotato'n;
'P_CropRice_2533'n='P_CropRice'n;
'P_CropSugarcane_2533'n='P_CropSugarcane'n;
'P_CropWheat_2533'n='P_CropWheat'n;
   /*------------------------------------------*/
";

run;
Quit;

/* Persist the output table */
proc casutil;
  Save casdata="&DEST_DATA" incaslib="&DEST_LIB" casout="&DEST_DATA%str(.)sashdat" outcaslib="&DEST_LIB" replace;
Quit;
