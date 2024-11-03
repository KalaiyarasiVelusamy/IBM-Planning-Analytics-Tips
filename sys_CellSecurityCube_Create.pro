601,100
602,"sys_CellSecurityCube_Create"
562,"NULL"
586,
585,
564,
565,"aaQCS?0I;6h_[n4i]i5=CcMuaXYKfuKLJ>L1htCqH4QGmExvhWnKyew4Xm`1>jlPPWOZvv3[f^sKoCS0Bt?jM69F[5trSoWkvQN?>^0dGjz8FrU>o[^g7f2]E<[rExj>npuEfD6BjtJ5MBlxZYSrRLEXDAFfTe3kKNwHAg]]?Rc5b1^LK5PlCc0D5zW0c>0h]ZGp7u4X"
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
589,
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
572,45

#****Begin: Generated Statements***
#****End: Generated Statements****

# Define the cube for which cell security is to be created
CubeDestroy('}CellSecurity_Revenue' ) ;

#vCubeName = 'Sales_Planning' ; 

vCubeName = 'Revenue' ;

# Replace 'CubeName' with the actual name of your target cube

# Check if the target cube exists


If (CubeExists(vCubeName) = 0);
	ItemReject('Cube ' | vCubeName | ' does not exist.');
EndIf;




# Check if a cell security cube already exists for the target cube


If (CubeExists('}CellSecurity_' | vCubeName) = 1); 
   ItemReject('Cell security cube for ' | vCubeName | ' already exists.');
EndIf;




# Create the cell security cube for the specified 
#Consider assigning security for 7 dimensional cubes.


CellSecurityCubeCreate(vCubeName, '0:0:0:1:1:1:0' );



# Log output (optional)


AsciiOutput('CellSecurityCubeCreationLog.txt', 'Cell security cube created for', vCubeName);
573,3

#****Begin: Generated Statements***
#****End: Generated Statements****
574,3

#****Begin: Generated Statements***
#****End: Generated Statements****
575,3

#****Begin: Generated Statements***
#****End: Generated Statements****
576,CubeAction=1511DataAction=1503CubeLogChanges=0
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
