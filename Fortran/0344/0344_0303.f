      PROGRAM MAIN
      CHARACTER*3 TEMP1/'OK'/,TEMP2/'NG'/,TEMP3(180)
      INTEGER J(180),N/0/
      REAL A(180)/180*0/
C
      DO 50 I=1,180
        J(I)=I
        A(I)=SIN(REAL(J(I)))
        IF (A(I)) 10,30,30
   10     TEMP3(I)=TEMP2
          GOTO 40
   30     TEMP3(I)=TEMP1
   40   A(I)=J(I)+N+A(I)
   50 CONTINUE
      WRITE (6,*) A
      WRITE (6,*) TEMP3
      STOP
      END
