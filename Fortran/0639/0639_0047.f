      LOGICAL*4 L(10)
      DATA L/.TRUE. ,.FALSE.,.FALSE.,.TRUE. ,.TRUE. ,
     *         .FALSE.,.TRUE. ,.FALSE.,.TRUE. ,.FALSE./
      REAL*4  R01(10),R02(10)
      DATA    R01,R02/10*2.0,10*3.0/
      COMPLEX*8  CR01(10),CR02(10)
      DATA    CR01,CR02/10*(1.0,2.0),10*(3.0,4.0)/
      DATA    N/10/

      DO 20 J=1,10
        DO 20 I=1,10
          CR01(I) = CR02(I) + (2.0,2.0)
   20 CONTINUE
      PRINT  *,CR01

      DO 30 J=1,N
        DO 30 I=1,N
          IF(L(I)) THEN
            R01(I) = R02(I) * 2.0
          ELSE
            R02(I) = R01(I) * 2.0
          ENDIF
   30 CONTINUE
      PRINT  *,R01,R02
      STOP
      END
