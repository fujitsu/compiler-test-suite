      LOGICAL L, T, F
      INTEGER*2  I1, I2, I3
      INTEGER*4  DI1, DI2, DI3
      DATA T,F/.TRUE.,.FALSE./,R1,R2/1.965E02,-2.1259E02/,
     *     I1,I2,I3/ 996,1362,-2571/,
     *     DI1,DI2,DI3/ 3278567,-8596791,23597623/
      WRITE(6,600)
      WRITE(6,601)
  600 FORMAT(1H1 /6X,25H*FORTRAN*          ENTER  /)
  601 FORMAT(1H0 / 10X,41H- JUSTICE -     - ITEM -       - COMPUTED
     *35H RESULT -        - COMPARE VALUE -  /)
      ITM =1
      L   =R1.GT.DI1
      CALL SUBF(ITM, L, F)
C
      ITM =2
      L   =DI1.GT.R1
      CALL SUBT(ITM, L, T)
C
      ITM =3
      L   =5.1+4.9*2.GT.I1+DI3/2
      CALL SUBF(ITM, L, F)
C
      ITM =4
      L   =I1+DI3/2.GT.5.1+4.9*2
      CALL SUBT(ITM, L, T)
C
      ITM =5
      L   =R2.GE.DI3
      CALL SUBF(ITM, L, F)
C
      ITM =6
      L   =DI3.GE.R2
      CALL SUBT(ITM, L, T)
C
      ITM =7
      L   =30*2+1250+DI2.GE.222+0.05*1.0E03/50
      CALL SUBF(ITM, L, F)
C
      ITM =8
      L   =222+0.05*1.0E03/50.GE.30*2+1250+DI2
      CALL SUBT(ITM, L, T)
C
      ITM =9
      L   =R1.LT.DI2
      CALL SUBF(ITM, L, F)
C
      ITM =10
      L   =DI2.LT.R1
      CALL SUBT(ITM, L, T)
C
      ITM =11
      L   =-3.5E03*1/2**10.LT.I1*20+3520/10+DI1
      CALL SUBT(ITM, L, T)
C
      ITM =12
      L   =I1*20+3520/10+DI1.LT.-3.5E03*1/2**10
      CALL SUBF(ITM, L, F)
C
      ITM =13
      L   =R2.LE.DI1
      CALL SUBT(ITM, L, T)
C
      ITM =14
      L   =DI1.LE.R2
      CALL SUBF(ITM, L, F)
C
      ITM =15
      L   =123.4*10+2.036E04/I1.LE.I3*1234/2**2+DI2
      CALL SUBF(ITM, L, F)
C
      ITM =16
      L   =I3*1234/2**2+DI2.LE.123.4*10+2.036E04/I1
      CALL SUBT(ITM, L, T)
C
      ITM =17
      L   =R1.EQ.DI3
      CALL SUBF(ITM, L, F)
C
      ITM =18
      L   =DI3.EQ.R1
      CALL SUBF(ITM, L, F)
C
      ITM =19
      L   =111.1E-01+125/5.0.EQ.I1/3+3**3+DI3
      CALL SUBF(ITM, L, F)
C
      ITM =20
      L   =I1/3+3**3+DI3.EQ.111.1E-01+125/5.0
      CALL SUBF(ITM, L, F)
C
      ITM =21
      L   =R2.NE.DI1
      CALL SUBT(ITM, L, T)
C
      ITM =22
      L   =DI1.NE.R2
      CALL SUBT(ITM, L, T)
C
      ITM =23
      L   =150/3.0+0.12993*I1.NE.3268*2+DI2/4**5-I2
      CALL SUBT(ITM, L, T)
C
      ITM =24
      L   =3268*2+DI2/4**5-I2.NE.150/3.0+0.12993*I1
      CALL SUBT(ITM, L, T)
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
