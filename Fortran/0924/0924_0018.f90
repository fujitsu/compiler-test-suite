  REAL(KIND=2) :: X ,Y,A,B
  INTEGER::P1
  X=100.234
  Y=200.789  
  OPEN(UNIT=11, FILE="FORT.8", ACCESS="STREAM",FORM="FORMATTED")
  WRITE(11,*) X,Y
  CLOSE(UNIT=11)
  OPEN(UNIT=42, FILE="FORT.8", ACCESS="STREAM",FORM="FORMATTED")
  INQUIRE(42,POS=P1)
  READ(42, FMT=*,POS=P1) A,B
  CLOSE(UNIT=42,STATUS="DELETE")

  PRINT*,A,B
  
  END 