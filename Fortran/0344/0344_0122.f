      PROGRAM  MAIN
      COMPLEX*8 C8A1,C8B1,C8C1(10)
      DATA     C8A1/1/
      DATA     C8B1/50/
      DATA     C8C1/1,2,3,4,5,6,7,8,9,10/

      DO 10 I=1,10
        C8A1 = C8B1
        C8C1(I) = C8A1 * C8C1(I)
   10 CONTINUE
C
      WRITE(6,*) ' C8C1 '
      WRITE(6,110) C8C1
  110 FORMAT (1H ,'(',F7.3,',',F7.3,')')
C
      STOP
      END
