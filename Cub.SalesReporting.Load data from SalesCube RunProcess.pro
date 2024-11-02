601,100
602,"Cub.SalesReporting.Load data from SalesCube RunProcess"
562,"VIEW"
586,"SalesCube"
585,"SalesCube"
564,
565,"qdcUMwBku=qpdQ`FbaAR5lAWokM`N7uv9cFFmca?WD<O4_\Hk^iCPxk<DdTU9qXVKD>[uD`RIOFDtYFQ57VjKKMl@H:T7RPLQPP_m25TsPuQ\d^=uch52Cf@emrS:9[JrvdnM1;g?_J2ZrO@nRK;<>Jeu5HVlnLSndNI8:o>Y^f;8eaq;nuwEQ4Ul9>VH=z=NS[R>CK5"
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
570,Source
571,
569,0
592,0
599,1000
560,2
pMonth
pSemaphoreFile
561,2
2
2
590,2
pMonth,"0"
pSemaphoreFile,"0"
637,2
pMonth,""
pSemaphoreFile,""
577,6
vactvsbud
vaccount1
vmodel
vregion
vmonth
vValue
578,6
2
2
2
2
2
1
579,6
1
4
3
2
5
6
580,6
0
0
0
0
0
0
581,6
0
0
0
0
0
0
582,6
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=32ColType=827
VarType=33ColType=827
603,0
572,26
#****Begin: Generated Statements***
#****End: Generated Statements****

#Create the SemaphoreFile
If (pSemaphoreFile @<> '');
  AsciiOutput(pSemaphoreFile, Expand('Parallel Thread for [%pMonth%] started.'));
EndIf;

cCubeSource = 'SalesCube';
cCubeTarget = 'SalesReporting';
cView = 'Temp_' | GetProcessName() | pMonth | NumberToString(Int(Rand() * 10000));
sFilter = 'month:' | pMonth;
ExecuteProcess('Bedrock.Cube.View.Create',
  'pCube',cCubeSource,
  'pView',cView,
  'pFilter',sFilter,
  'pSuppressZero',1,
  'pSuppressConsol',1,
  'pSuppressRules',0,
  'pDimensionDelim','&',
  'pElementStartDelim',':',
  'pElementDelim','+',
  'pDebug',0);
  
  
  DatasourceCubeView=cView;
573,2
#****Begin: Generated Statements***
#****End: Generated Statements****
574,4
#****Begin: Generated Statements***
#****End: Generated Statements****

CellPutN(vValue, cCubeTarget, vactvsbud, vregion, vmodel, vaccount1, vmonth);
575,8
#****Begin: Generated Statements***
#****End: Generated Statements****

Sleep(20000);

#Delete pSemaphoreFile
AsciiDelete(pSemaphoreFile);

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
