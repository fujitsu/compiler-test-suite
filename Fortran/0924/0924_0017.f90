REAL(KIND=2)::X,Y,Z,A,B,C
X=100.566
Y=200.789
Z=300.123
OPEN( 25, FILE='FORT.2', ACCESS='SEQUENTIAL', FORM='FORMATTED' ) 
        WRITE( 25,FMT='(F10.3)' ) X 
        WRITE( 25,FMT='(F10.3)')Y 
        WRITE( 25,FMT='(F10.3)') Z 
CLOSE (25 )
OPEN( 35, FILE='FORT.2', ACCESS='SEQUENTIAL', FORM='FORMATTED' ) 
        READ( 35,FMT='(F10.3)') A
        READ( 35,FMT='(F10.3)')B 
        READ( 35,FMT='(F10.3)') C 
CLOSE (35,STATUS='DELETE' )

PRINT*,A,B,C
END