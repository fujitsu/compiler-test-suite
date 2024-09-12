      REAL*4 A(10),IDATA
      INTEGER*4 IMAX
      DATA A/3,5,3,-10,55,0,55,-10,7,1/
      DATA IMAX/1/,IDATA/0/

      DO 11 I=1,10
        IF(A(IMAX).LE.A(I)) THEN
          IDATA=A(I)
          IMAX=I
        ENDIF
   11 CONTINUE
      WRITE(6,*) 'MAX DATA ****  ',IDATA
      WRITE(6,*) 'MAX INDEX ***  ',IMAX
      STOP
      END
