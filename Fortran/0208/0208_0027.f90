INTEGER,PARAMETER::K=2
REAL(KIND=K)::X1,Y1,Z1,A1
X1=1.566
Y1=2.789
Z1=3.123
OPEN( 25, FILE='FORT.46', ACCESS='SEQUENTIAL', FORM='UNFORMATTED' )
        WRITE( 25 ) X1
        WRITE( 25 ) Y1
        WRITE( 25 ) Z1
        BACKSPACE (25)
        READ( 25) A1
CLOSE (25 )
IF(abs(A1 - 3.123 )>0.01)PRINT*,"102",REAL(A1,4)
PRINT*,"pass"
END
