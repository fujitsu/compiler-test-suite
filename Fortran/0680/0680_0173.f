      REAL*4 A(10),IDATA
      INTEGER*4 IMIN
      DATA A/5,4,5,5,0,1,1,3,1,3/
      DATA IMIN/1/,IDATA/0/

      DO 11 I=1,10
        IF(A(IMIN).GE.A(I)) THEN
          IMIN=I
        ENDIF
   11 CONTINUE
      WRITE(6,*) 'MIN DATA ****  ',IDATA
      WRITE(6,*) 'MIN INDEX ***  ',IMIN
      STOP
      END
