      REAL*4 A(20),IDATA
      INTEGER*4 IMIN
      DATA A/5,7,5,5,8,1,1,3,1,3,8,0,1,-4,3,2,2,5,9,3/
      DATA IMIN/1/,IDATA/0/

      DO 11 I=1,20
        IF(A(IMIN).GE.A(I)) THEN
          IMIN=I
          IF(MOD(IMIN,2).EQ.0) THEN
            GO TO 22
          ENDIF
        ENDIF
   11 CONTINUE
   22 IDATA=A(IMIN)
      WRITE(6,*) 'MIN DATA ****  ',IDATA
      WRITE(6,*) 'MIN INDEX ***  ',IMIN
      STOP
      END
