      PROGRAM MAIN
       LOGICAL*4 LOV(-4:30)
       INTEGER*4 I, I1, I2, J1, J2
       REAL*4 RSIV, RCOV, RA(-4:30), B(-4:30), C(-4:30), D(-4:30), RMIN,
     X    RDIF

       LOGICAL*4 LOV1(-4:30), LO
       INTEGER*4 J3

       INTEGER*4 J, J4, N1, N2, SS
       REAL*4 Y(-4:30), YY(-4:30), CC(-4:30), DD(-4:30)

       COMPLEX*8 FAC(-4:30), PH(-4:30), PHB(-4:30), W(-4:30), Z(-4:30)
       COMPLEX*8 ZB(-4:30), ZZ(-4:30), AM(-4:30)
       REAL Pi
       PARAMETER (Pi = 3.14)
       INTEGER II14, II13, II12, II11, II10, II9, II8, II7, II6, II5, 
     X   II4, II3, II2, II1
       COMPLEX CC24, CC23, CC22, CC21, CC20, CC19, CC18, CC17, CC16, 
     X   CC15, CC14, CC13, CC12, CC11, CC10, CC9, CC8, CC7, CC6, CC5, 
     X   CC4, CC3, CC2, CC1
       RMIN = 1000.

       DATA LOV/20*.FALSE.,15*.TRUE./ 
       DATA LOV1/35*.TRUE./ 
       DATA RA/10*1.0,-2.,9*2.,15*3./ 
       DATA B/35*1.0/ 
       DATA C/35*1.0/ 
       DATA D/35*1.0/ 
       DATA Y/35*1.0/ 
       DATA YY/35*1.0/ 
       DATA FAC/10*(0.,0.),10*(1.0,0.),10*(2.0,0.),5*(3.0,0.)/ 
       DATA AM/10*(1.,0.),10*(0.0,1.),10*(3.0,4.),5*(3.0,0.)/ 
       DATA PH/35*(0.,0.)/ 
       DATA PHB/35*(0.,0.)/ 
       DATA W/35*(0.,0.)/ 
       DATA Z/35*(0.,0.)/ 
       DATA ZB/35*(0.,0.)/ 
       DATA ZZ/35*(0.,0.)/ 
       DATA CC/35*100./ 
       DATA DD/35*1000./ 

       RSIV = SIN (0.5 * Pi) * 2.
       RCOV = COS (0.5 * Pi) * 2.
       I2 = 100
       II9 = (INT (RSIV) * 4 - INT (RCOV) + 4) / 8
       II8 = II9 * 8 - 2
C$OMP PARALLEL SHARED (RSIV,RCOV,B,LOV,I2,D,RA,RMIN) PRIVATE (II2,II3,
C$OMP& II4,II7,II6,II12,II1,I)
C$OMP DO 
       DO II1=0,2
        GO TO (15, 16), II1
        II2 = INT (RSIV) + INT (RCOV)
        II7 = (INT (RSIV) * 4 - INT (RCOV) + 4) / 8
        II6 = II7 * 8 - 2
        DO I=-2,INT (RSIV)*4-INT (RCOV)-6,8
         B(I-2) = II2 + B(I)
         B(I) = II2 + B(I+2)
         B(I+2) = II2 + B(I+4)
         B(I+4) = II2 + B(I+6)
        END DO
        DO I=II6,INT (RSIV)*4-INT (RCOV),2
         B(I-2) = II2 + B(I)
        END DO
C$OMP FLUSH
        GO TO 17
   15   II3 = INT (RSIV)
        II4 = INT (RCOV) * 2
        II12 = -1
        DO I=-2,II3*4-INT (RCOV),2
         II12 = II12 + 1
         IF (LOV(I)) THEN
          I2 = I2 - 1
         END IF
         D(II12+1) = RA((II12+1)*II3+II4) - I2
        END DO
C$OMP FLUSH
        GO TO 17
   16   DO I=-2,INT (RSIV)*4-INT (RCOV),2
         IF (RMIN .GT. RA(I)) THEN
          RMIN = RA(I)
         END IF
        END DO
C$OMP FLUSH
   17   CONTINUE
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO I=-2,INT (RSIV)*4-INT (RCOV)-6,8
        C(I) = B(I-1)
        C(I+2) = B(I+1)
        C(I+4) = B(I+3)
        C(I+6) = B(I+5)
       END DO
       DO I=II8,INT (RSIV)*4-INT (RCOV),2
        C(I) = B(I-1)
       END DO
       WRITE (6, 999) 'RMIN=', RMIN, 'RA=', RA, 'B=', B, 'C=', C, 'D=', 
     X   D

       DO I=INT (RSIV)-1,10,1
        IF (C(I) .EQ. 1.) THEN
         LO = .FALSE.
        ELSE
         LO = .TRUE.
        END IF
        IF (LOV(I)) THEN
         LOV1(I) = .FALSE.
        ELSE
         LOV1(I) = LO
        END IF
        IF (LOV1(I) .NEQV. .FALSE.) THEN
         C(I) = RA(I) + B(INT (RCOV)*INT (RSIV)+I+1)
        ELSE
         C(I) = RA(I) + B(INT (RCOV)+I+1)
        END IF
       END DO
       WRITE (6, 999) 'LOV1=', LOV1, 'RA=', RA, 'B=', B, 'C=', C, 'D=', 
     X   D

       SS = 0
       II5 = INT (RSIV) * 2 + INT (RCOV) * 3
       II11 = (INT (RCOV) * (-3) + INT (RSIV) * (-2) + 25) / 6
       II10 = INT (RSIV) * 2 + INT (RCOV) * 3 + II11 * 6 - 3
C$OMP PARALLEL IF (INT (RCOV) * (-3) + INT (RSIV) * (-2) .GT. 19) 
C$OMP& SHARED (RSIV,RCOV,FAC,AM,C,D,Y,YY,B,DD,ZZ) PRIVATE (CC1,CC2,CC3,
C$OMP& CC4,CC5,CC6,CC7,CC8,CC9,CC10,CC11,CC12,CC13,CC14,CC15,CC16,CC17,
C$OMP& CC18,I)
C$OMP DO 
       DO I=INT (RSIV)*2+INT (RCOV)*3-3,16,6
        CC1 = CEXP (FAC(I))
        CC2 = CEXP (FAC(I+2))
        CC3 = CEXP (FAC(I+4))
        CC4 = CONJG (CC1)
        CC5 = CONJG (CC2)
        CC6 = CONJG (CC3)
        CC7 = CC1 * CC4
        CC8 = CC2 * CC5
        CC9 = CC3 * CC6
        CC10 = AM(I) * CC1
        CC11 = AM(I+2) * CC2
        CC12 = AM(I+4) * CC3
        CC13 = CONJG (CC10)
        CC14 = CONJG (CC11)
        CC15 = CONJG (CC12)
        CC16 = CC10 * CC13
        CC17 = CC11 * CC14
        CC18 = CC12 * CC15
        C(I) = CABS (CC16)
        C(I+2) = CABS (CC17)
        C(I+4) = CABS (CC18)
        D(I) = CABS (CC7)
        D(I+2) = CABS (CC8)
        D(I+4) = CABS (CC9)
        Y(I) = CC16
        Y(I+2) = CC17
        Y(I+4) = CC18
        YY(I) = CC7
        YY(I+2) = CC8
        YY(I+4) = CC9
        B((I+INT (RCOV)*(-3)+INT (RSIV)*(-2)+3)/6*3+2) = DD(I-1)
        B((I+INT (RCOV)*(-3)+INT (RSIV)*(-2)+3)/6*3+3) = DD(I+1)
        B((I+INT (RCOV)*(-3)+INT (RSIV)*(-2)+3)/6*3+4) = DD(I+3)
        ZZ(I+4) = CC18
        ZZ(I+2) = CC17
        ZZ(I) = CC16
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       II13 = -1
       DO I=II10,20,2
        II13 = II13 + 1
        CC19 = CEXP (FAC(I))
        CC20 = CONJG (CC19)
        CC21 = CC19 * CC20
        CC22 = AM(I) * CC19
        CC23 = CONJG (CC22)
        CC24 = CC22 * CC23
        C(I) = CABS (CC24)
        D(I) = CABS (CC21)
        Y(I) = CC24
        YY(I) = CC21
        B(II13+II11*3+2) = DD(I-1)
        ZZ(I) = CC24
       END DO
       II14 = -1
       DO I=II5-3,20,2
        II14 = II14 + 1
        IF (C(I) .GE. 0.991) THEN
         C(I) = 0.
        END IF
        IF (D(I) .GE. 0.991) THEN
         D(I) = 0.
        END IF
        IF (Y(I) .GE. 0.991) THEN
         CC(I) = 0.
        END IF
        IF (YY(I) .GE. 0.991) THEN
         DD(I) = 0.
        END IF
        SS = SS + INT (Y(I))
        RA(II5+II14-2) = CC(I)
       END DO
       WRITE (6, 999) 'RA=', RA
       WRITE (6, 999) 'ZZ=', ZZ
       WRITE (6, 999) 'B=', B
       WRITE (6, 999) 'C=', C
       WRITE (6, 999) 'D=', D
       WRITE (6, 999) 'CC=', CC
       WRITE (6, 999) 'DD=', DD
       WRITE (6, 999) 'SS=', SS
  999  FORMAT(10G20.6)
       STOP 
      END
