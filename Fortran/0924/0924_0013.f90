REAL(KIND=2)::X,Y,Z,A,B,C
X=100.566
Y=200.789
Z=300.123
OPEN( 25, FILE='FORT.2', ACCESS='DIRECT', RECL=20,FORM='FORMATTED' ) 
        WRITE( 25,FMT='(F10.3)', REC=1 ) X 
        WRITE( 25,FMT='(F10.3)', REC=10 )Y 
        WRITE( 25,FMT='(F10.3)', REC=15) Z 
CLOSE (25 )
OPEN( 35, FILE='FORT.2', ACCESS='DIRECT', RECL=20,FORM='FORMATTED' ) 
        READ( 35,FMT='(F10.3)', REC=1 ) A
        READ( 35,FMT='(F10.3)', REC=10 )B 
        READ( 35,FMT='(F10.3)', REC=15) C 
CLOSE (35,STATUS='DELETE' )

PRINT*,A,B,C
END