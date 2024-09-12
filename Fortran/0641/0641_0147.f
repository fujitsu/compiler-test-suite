      PROGRAM MAIN
       IMPLICIT REAL*8 (D), LOGICAL*4 (L)
       DIMENSION DA10(-10:10), DA20(-10:10), DA30(-10:10), DB10(-20:-1,
     X   20), DB20(20,-20:-1), DB30(-10:10,-10:10), DC10(-10:10,-10:10,
     X   -10:10)
       DIMENSION LD10(20), LD20(20), LD30(20,20)
       DIMENSION RA10(20), RA20(20), RB10(20,20)
       INTEGER IT2, IT1
       PARAMETER (IT2 = -10, IT1 = 1)
       DATA DA10/21*1.D0/ 
       DATA DA20/21*2.D0/ 
       DATA DA30/21*3.D0/ 
       DATA DB10/400*2.D0/ 
       DATA DB20/400*4.D0/ 
       DATA DB30/441*6.D0/ 
       DATA DC10/9261*1.D0/ 
       DATA LD10/20*.FALSE./ 
       DATA LD20/20*.FALSE./ 
       DATA LD30/400*.FALSE./ 
       DATA RA10/20*1./ 
       DATA RA20/20*2./ 
       DATA RB10/400*3./ 
       INTEGER II1, K2, J2, I2
       REAL RR1
       DOUBLE PRECISION DD25, DD24, DD23, DD22, DD21, DD20, DD19, DD18, 
     X   DD17, DD16, DD15, DD14, DD13, DD12, DD11, DD10, DD9, DD8, DD7, 
     X   DD6, DD5, DD4, DD3, DD2, DD1

       DO III=1,2
        DO I2=-10,-1
         DA10(I2) = DA20(I2) * DA30(I2)
         DA20(I2+1) = DBLE (RA10(1-I2)) + DB10(I2,20)
         II1 = -I2
         RR1 = RA20(II1)
         DO J2=1,10
          DB10(I2,J2) = DB20(J2,I2-5) + DB30(I2,J2)
          RB10(J2,II1) = RA10(J2) + RR1
          DX1 = DB30(I2,J2) + DBLE (RB10(J2,II1))
          IF (DB10(I2,J2) .GT. DX1) THEN
           LD10(J2) = .TRUE.
           DB20(J2,I2) = DNINT (DSQRT (DX1))
          ELSE
           LD20(J2) = .TRUE.
           DB30(I2,J2) = DX1 - DB10(I2,J2)
          END IF
          DD1 = DB30(I2+11,J2-11)
          DD2 = DB20(J2,I2-10)
          DO K2=-10,4,8
           DD5 = DC10(I2,J2,K2) + DD2
           DD6 = DC10(I2,J2,K2+2) + DD2
           DD7 = DC10(I2,J2,K2+4) + DD2
           DD3 = DC10(I2,J2,K2+6) + DD2
           DD12 = DD5 - DD1
           DD13 = DD6 - DD1
           DD14 = DD7 - DD1
           DD15 = DD3 - DD1
           DC10(I2,J2,K2+6) = DD15
           DC10(I2,J2,K2+4) = DD14
           DC10(I2,J2,K2+2) = DD13
           DC10(I2,J2,K2) = DD12
          END DO
          DO K2=6,10,2
           DD3 = DC10(I2,J2,K2) + DD2
           DD16 = DD3 - DD1
           DC10(I2,J2,K2) = DD16
          END DO
          IF (DB20(J2,I2) .GE. DB30(I2,J2)) THEN
           LD30(J2,I2+11) = .TRUE.
          END IF
         END DO
         DA30(I2+1) = DA10(I2+2) + DA20(I2+3)
        END DO
        I = 0

        WRITE (6, *) ' (DA10) ', (DA10(K), K=-10,-1)
        WRITE (6, *) ' (DA20) ', (DA20(K), K=-9,0)
        WRITE (6, *) ' (DA30) ', (DA30(K), K=-9,0)
        WRITE (6, *) ' (DB10) ', ((DB10(I,J), I=-10,-1), J=1,10)
        WRITE (6, *) ' (RB10) ', ((RB10(I,J), I=1,10), J=1,10)
        WRITE (6, *) ' (DB20) ', ((DB20(I,J), I=1,10), J=-10,-1)
        WRITE (6, *) ' (DB30) ', ((DB30(I,J), I=-10,-1), J=1,10)
        WRITE (6, *) ' (LD10) ', (LD10(K), K=1,10)
        WRITE (6, *) ' (LD20) ', (LD20(K), K=1,10)
        WRITE (6, *) ' (DC10) ', (((DC10(I,J,K), I=-10,-1), J=1,10), K=
     X    -10,10,2)
        WRITE (6, *) ' (LD20) ', ((LD30(I,J), I=1,10), J=1,10)
        DO I1=10,0,-1
         IF (DA20(I1) .GT. DA10(I1)) THEN
          LD10(I1+1) = .NOT.LD10(I1+1)
          DA10(I1) = DA20(I1)
         ELSE
          IF (DA30(I1) .GT. DA20(I1)) THEN
           LD20(I1+1) = LD20(I1+1) .OR. LD10(I1+10)
           DA20(I1) = DA30(I1)
          END IF
         END IF
         DO J1=-20,-15,5
          DD17 = DMIN1 (DB10(J1,I1+1), DB20(I1+1,J1))
          DD18 = DMIN1 (DB10(J1+1,I1+1), DB20(I1+1,J1+1))
          DD19 = DMIN1 (DB10(J1+2,I1+1), DB20(I1+1,J1+2))
          DD20 = DMIN1 (DB10(J1+3,I1+1), DB20(I1+1,J1+3))
          DD21 = DMIN1 (DB10(J1+4,I1+1), DB20(I1+1,J1+4))
          DD8 = DBLE (RB10(I1+1,J1+21))
          DD9 = DBLE (RB10(I1+1,J1+22))
          DD10 = DBLE (RB10(I1+1,J1+23))
          DD11 = DBLE (RB10(I1+1,J1+24))
          DD4 = DBLE (RB10(I1+1,J1+25))
          DB20(I1+10,J1) = DD17 - DD8
          DB20(I1+10,J1+1) = DD18 - DD9
          DB20(I1+10,J1+2) = DD19 - DD10
          DB20(I1+10,J1+3) = DD20 - DD11
          DB20(I1+10,J1+4) = DD21 - DD4
          DB30(J1+14,I1) = DD21
          DB30(J1+13,I1) = DD20
          DB30(J1+12,I1) = DD19
          DB30(J1+11,I1) = DD18
          DB30(J1+10,I1) = DD17
         END DO
         DO K1=1,10
          DO J1=-20,-15,5
           DD22 = DC10(I1-10,J1+10,K1) + DB10(J1,K1)
           DD23 = DC10(I1-10,J1+11,K1) + DB10(J1+1,K1)
           DD24 = DC10(I1-10,J1+12,K1) + DB10(J1+2,K1)
           DD25 = DC10(I1-10,J1+13,K1) + DB10(J1+3,K1)
           DC10(I1,J1+14,K1) = DC10(I1-10,J1+14,K1) + DB10(J1+4,K1)
           DC10(I1,J1+13,K1) = DD25
           DC10(I1,J1+12,K1) = DD24
           DC10(I1,J1+11,K1) = DD23
           DC10(I1,J1+10,K1) = DD22
          END DO
         END DO
         DO J1=-20,-15,5
          DB10(J1,1) = DMAX1 (DB30(J1+10,I1), DB20(I1+10,J1))
          DB10(J1+1,1) = DMAX1 (DB30(J1+11,I1), DB20(I1+10,J1+1))
          DB10(J1+2,1) = DMAX1 (DB30(J1+12,I1), DB20(I1+10,J1+2))
          DB10(J1+3,1) = DMAX1 (DB30(J1+13,I1), DB20(I1+10,J1+3))
          DB10(J1+4,1) = DMAX1 (DB30(J1+14,I1), DB20(I1+10,J1+4))
         END DO
        END DO

        WRITE (6, *) ' (LD10) ', (LD10(K), K=11,1,-1)
        WRITE (6, *) ' (DA10) ', (DA10(K), K=10,0,-1)
        WRITE (6, *) ' (LD20) ', (LD20(K), K=11,1,-1)
        WRITE (6, *) ' (DA20) ', (DA20(K), K=10,0,-1)
        WRITE (6, *) ' (DB30) ', ((DB30(I,J), I=-10,-1), J=10,0,-1)
        WRITE (6, *) ' (DB20) ', ((DB20(I,J), I=20,10,-1), J=-20,-11)
        WRITE (6, *) ' (DB10) ', (DB10(I,1), I=-20,-11)
        WRITE (6, *) ' (DC10) ', (((DC10(I,J,K), I=10,0,-1), J=-10,-1), 
     X    K=1,10)
       END DO

       STOP 
      END
