601,100
602,"Cub.SalesReporting.Load.Main_RunProcess"
562,"NULL"
586,
585,
564,
565,"b=avN9IbsfsABREMi`rWkDBXV0r7NRCR^?<Kr\f=wD]A<edmM;1`6:EXTVv1=Vd;[v7zt@697X5?>u;qXTAA5FG>GdF7]gaLm8uMHgatSW=aRWgS7?\?]9TjW7DEOoH_Zqj`Io8p7pB9iJM3SiYMp]p]BkeI7KmwkCUv^Baitp[qU]T\xy2ygG=Mr5>oW=>smUVL1XnN"
559,1
928,0
593,
594,
595,
597,
598,
596,
800,
801,
566,0
567,","
588,"."
589,","
568,""""
570,
571,
569,0
592,0
599,1000
560,0
561,0
590,0
637,0
577,0
578,0
579,0
580,0
581,0
582,0
603,0
572,60
#****Begin: Generated Statements***
#****End: Generated Statements****
cCubeSource = 'SalesCube';
cCubeTarget = 'SalesReporting';
cTM1RunTIExe = '"C:\Program Files\ibm\cognos\tm1_64\bin64\tm1runti.exe" –server SData –user admin –pwd apple ';
cSemaphoreFilePath = 'C:\Temp\';
DatasourceASCIIQuoteCharacter='';


#Set Cube Logging
CubeSetLogChanges(cCubeTarget, 0);


#Zero Out in separated thread
sProcess = 'Cub.SalesReporting.ZeroOut';
sCommand = cTM1RunTIExe | '-process ' | sProcess;
ExecuteCommand(sCommand, 1);

#RunProcess
sProcess = 'Cub.SalesReporting.Load data from SalesCube RunProcess';
sMonth = 'Jan';
sSemaphoreFile = cSemaphoreFilePath | sProcess | '_' | sMonth | ' ' | TimSt( Now, '\Y\m\d\h\i\s' | '.txt' );
RunProcess(sProcess, 'pMonth', sMonth, 'pSemaphoreFile', sSemaphoreFile);
sMonth = 'Feb';
sSemaphoreFile = cSemaphoreFilePath | sProcess | '_' | sMonth | ' ' | TimSt( Now, '\Y\m\d\h\i\s' | '.txt' );
RunProcess(sProcess, 'pMonth', sMonth, 'pSemaphoreFile', sSemaphoreFile);
sMonth = 'Mar';
sSemaphoreFile = cSemaphoreFilePath | sProcess | '_' | sMonth | ' ' | TimSt( Now, '\Y\m\d\h\i\s' | '.txt' );
RunProcess(sProcess, 'pMonth', sMonth, 'pSemaphoreFile', sSemaphoreFile);
sMonth = 'Apr';
sSemaphoreFile = cSemaphoreFilePath | sProcess | '_' | sMonth | ' ' | TimSt( Now, '\Y\m\d\h\i\s' | '.txt' );
RunProcess(sProcess, 'pMonth', sMonth, 'pSemaphoreFile', sSemaphoreFile);
sMonth = 'May';
sSemaphoreFile = cSemaphoreFilePath | sProcess | '_' | sMonth | ' ' | TimSt( Now, '\Y\m\d\h\i\s' | '.txt' );
RunProcess(sProcess, 'pMonth', sMonth, 'pSemaphoreFile', sSemaphoreFile);
sMonth = 'Jun';
sSemaphoreFile = cSemaphoreFilePath | sProcess | '_' | sMonth | ' ' | TimSt( Now, '\Y\m\d\h\i\s' | '.txt' );
RunProcess(sProcess, 'pMonth', sMonth, 'pSemaphoreFile', sSemaphoreFile);
sMonth = 'Jul';
sSemaphoreFile = cSemaphoreFilePath | sProcess | '_' | sMonth | ' ' | TimSt( Now, '\Y\m\d\h\i\s' | '.txt' );
RunProcess(sProcess, 'pMonth', sMonth, 'pSemaphoreFile', sSemaphoreFile);
sMonth = 'Aug';
sSemaphoreFile = cSemaphoreFilePath | sProcess | '_' | sMonth | ' ' | TimSt( Now, '\Y\m\d\h\i\s' | '.txt' );
RunProcess(sProcess, 'pMonth', sMonth, 'pSemaphoreFile', sSemaphoreFile);
sMonth = 'Sep';
sSemaphoreFile = cSemaphoreFilePath | sProcess | '_' | sMonth | ' ' | TimSt( Now, '\Y\m\d\h\i\s' | '.txt' );
RunProcess(sProcess, 'pMonth', sMonth, 'pSemaphoreFile', sSemaphoreFile);
sMonth = 'Oct';
sSemaphoreFile = cSemaphoreFilePath | sProcess | '_' | sMonth | ' ' | TimSt( Now, '\Y\m\d\h\i\s' | '.txt' );
RunProcess(sProcess, 'pMonth', sMonth, 'pSemaphoreFile', sSemaphoreFile);
sMonth = 'Nov';
sSemaphoreFile = cSemaphoreFilePath | sProcess | '_' | sMonth | ' ' | TimSt( Now, '\Y\m\d\h\i\s' | '.txt' );
RunProcess(sProcess, 'pMonth', sMonth, 'pSemaphoreFile', sSemaphoreFile);
sMonth = 'Dec';
sSemaphoreFile = cSemaphoreFilePath | sProcess | '_' | sMonth | ' ' | TimSt( Now, '\Y\m\d\h\i\s' | '.txt' );
RunProcess(sProcess, 'pMonth', sMonth, 'pSemaphoreFile', sSemaphoreFile);


sSemaphoreFileChecker = Subst(sSemaphoreFile, 1, 15) | '*.txt';

573,2
#****Begin: Generated Statements***
#****End: Generated Statements****
574,2
#****Begin: Generated Statements***
#****End: Generated Statements****
575,22
#****Begin: Generated Statements***
#****End: Generated Statements****


#Check the RunProcess Status
While (2 + 2 = 4) ;
  If(WildcardFileSearch(sSemaphoreFileChecker, '' ) @= '');
    Break;
  Endif;
End;


#Remove Temp Views
ExecuteProcess('Bedrock.Cube.View.Delete',
  'pCubes',cCubeSource,
  'pViews','Temp_*',
  'pDelimiter','&',
  'pDebug',0);

#Reset Cube logging
CubeSetLogChanges(cCubeTarget, 1);

576,
930,0
638,1
804,0
1217,0
900,
901,
902,
938,0
937,
936,
935,
934,
932,0
933,0
903,
906,
929,
907,
908,
904,0
905,0
909,0
911,
912,
913,
914,
915,
916,
917,0
918,1
919,0
920,50000
921,""
922,""
923,0
924,""
925,""
926,""
927,""
