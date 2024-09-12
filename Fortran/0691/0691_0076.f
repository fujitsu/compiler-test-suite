      LOGICAL L, T, F
      INTEGER*2   I(5)
      INTEGER*4 DI(5)
      REAL*8  DP1,DP2,DP3
      DATA T,F/.TRUE.,.FALSE./,DP1,DP2,DP3/1.4624D03,-572.831D02,
     *     9.75273D04/
      DO 10 J=1,5
      I(J)=J+100
   10 CONTINUE
      DO 20 K= 1,5
      DI(K)=K+328560
   20 CONTINUE
      WRITE(6,600)
      WRITE(6,601)
  600 FORMAT(1H1 / 6X,25H*FORTRAN*          ENTER  /)
  601 FORMAT(1H0 / 10X,41H- JUSTICE -     - ITM -        - COMPUTED ,
     *35H RESULT -        - COMPARE VALUE -  /)
      ITM =1
      L   =DI(1).GT.DP2
      CALL SUBT(ITM, L, T)
C
      ITM =2
      L   =DP2.GT.DI(1)
      CALL SUBF(ITM, L, F)
C
      ITM =3
      L   =(I(1)+149)/5+DI(5).GT.2.0**3/2.0+DP2
      CALL SUBT(ITM, L, T)
C
      ITM =4
      L   =2.0**3/2.0+DP2.GT.(I(1)+149)/5+DI(5)
      CALL SUBF(ITM, L, F)
C
      ITM =5
      L   =DI(2).GE.DP1
      CALL SUBT(ITM, L, T)
C
      ITM =6
      L   =DP1.GE.DI(2)
      CALL SUBF(ITM, L, F)
C
      ITM =7
      L   =3*2+DI(3)/I(2).GE.3260/2.0-1.5E03+DP3
      CALL SUBF(ITM, L, F)
C
      ITM =8
      L   =3260/2.0-1.5E03+DP3.GE.3*2+DI(3)/I(2)
      CALL SUBT(ITM, L, T)
C
      ITM =9
      L   =DI(3).LT.DP3
      CALL SUBF(ITM, L, F)
C
      ITM =10
      L   =DP3.LT.DI(3)
      CALL SUBT(ITM, L, T)
C
      ITM =11
      L   =10/2*5+I(3)**2+DI(4).LT.45*50.0*(-3.14E05)+DP2
      CALL SUBF(ITM, L, F)
C
      ITM =12
      L   =45*50.0*(-3.14E05)+DP2.LT.10/2*5+I(3)**2+DI(4)
      CALL SUBT(ITM, L, T)
C
      ITM =13
      L   =DI(4).LE.DP2
      CALL SUBF(ITM, L, F)
C
      ITM =14
      L   =DP2.LE.DI(4)
      CALL SUBT(ITM, L, T)
C
      ITM =15
      L   =I(4)/2+3112-DI(5).LE.1.234E01*10+DP1-2.3D02
      CALL SUBT(ITM, L, T)
C
      ITM =16
      L   =1.234E01*10+DP1-2.3D02.LE.I(4)/2+3112-DI(5)
      CALL SUBF(ITM, L, F)
C
      ITM =17
      L   =DI(1).EQ.DP1
      CALL SUBF(ITM, L, F)
C
      ITM =18
      L   =DP1.EQ.DI(1)
      CALL SUBF(ITM, L, F)
C
      ITM =19
      L   =24**2/1+I(1)*20+DI(2).EQ.DI(2)/4.0*I(1)+0.1723D12
      CALL SUBF(ITM, L, F)
C
      ITM =20
      L   =DI(2)/4.0*I(1)+0.1723D12.EQ.24**2/1+I(1)*20+DI(2)
      CALL SUBF(ITM, L, F)
C
      ITM =21
      L   =35272864.EQ.0.352728641D08
      CALL SUBF(ITM, L, F)
C
      ITM =22
      L   =DI(2).NE.DP2
      CALL SUBT(ITM, L, T)
C
      ITM =23
      L   =DP2.NE.DI(2)
      CALL SUBT(ITM, L, T)
C
      ITM =24
      L   =I(2)**3+28625/5+DI(3).NE.183.2E-01*15/3.0-0.291D03
      CALL SUBT(ITM, L, T)
C
      ITM =25
      L   =183.2E-01*15/3.0-0.291D03.NE.I(2)**3+28625/5+DI(3)
       CALL SUBT(ITM, L, T)
C
      ITM =26
      L   =244276886.NE.0.244276886D09
      CALL SUBF(ITM, L, F)
      WRITE(6,604)
  604 FORMAT(1H0 / 6X,24H*FORTRAN*          EXIT  )
      STOP
      END
      SUBROUTINE SUBF(I,Z,X)
      LOGICAL Z,X
      IF(Z) GO TO 701
      WRITE(6,603)I,Z,X
      GO TO 1000
  701 WRITE(6,602)I,Z,X
 1000 RETURN
  602 FORMAT(1H0, 12X, 7H*ERROR*,7X,2H( ,I2,2H ),14X,L6,20X,L6 )
  603 FORMAT(1H0, 12X, 4H*OK*,10X,2H( ,I2,2H ),14X,L6,20X,L6 )
      END
      SUBROUTINE SUBT(I,Z,Y)
      LOGICAL Z,Y
      IF(Z) GO TO 700
      WRITE(6,602)I,Z,Y
      GO TO 1000
  700 WRITE(6,603)I,Z,Y
 1000 RETURN
  602 FORMAT(1H0, 12X, 7H*ERROR*,7X,2H( ,I2,2H ),14X,L6,20X,L6 )
  603 FORMAT(1H0, 12X, 4H*OK*,10X,2H( ,I2,2H ),14X,L6,20X,L6 )
      END
