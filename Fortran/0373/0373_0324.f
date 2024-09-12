      INTEGER IL(10)/1,2,3,4,5,6,7,8,9,10/
      CALL  SUB(il,10)
      END

      SUBROUTINE  SUB(il,N)
      integer  B(10),RMIN
      INTEGER IL(10)
      DATA    B/11,-100,2,23,22,99,11,-1,-200,-9/

      RMIN = 999999

      DO 10 I=1,N
          IF (i.lt.5) THEN
            RMIN = B(IL(5))
          ENDIF
  10  CONTINUE
      PRINT *,RMIN

      STOP
      END
