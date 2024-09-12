      PROGRAM MAIN

       REAL*4 DV11(4,4), DV12(4,4), DV13(4,4), DS11, DS12
       COMPLEX*8 CV11(4,4), CV12(4,4), CV13(4,4)

       LOGICAL*4 LV21(10)
       DATA LV21/4*.TRUE.,3*.FALSE.,3*.TRUE./ 
       REAL*4 RS21, RV21(10)
       DATA RV21/3*-1.,4*0.5,3*-2./ 
       INTEGER*4 IV21(10), IS21
       DATA IV21/1,2,3,4,5,4,3,2,1,3/ 
       INTEGER*2 HS21, HS22

       INTEGER*4 IV31(10), IS31
       DATA IV31/10*0/ 
       REAL*4 RS31
       REAL*8 DV31(10), DS31, DS32
       REAL RR1
       PARAMETER (RR1 = 1. / 16.)
       REAL RR33, RR32, RR31, RR30, RR29, RR28, RR27, RR26, RR25, RR24, 
     X   RR23, RR22, RR21, RR20, RR19, RR18, RR17, RR16, RR15, RR14, 
     X   RR13, RR12, RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, RR3, RR2
       COMPLEX CC24, CC23, CC22, CC21, CC20, CC19, CC18, CC17, CC16, 
     X   CC15, CC14, CC13, CC12, CC11, CC10, CC9, CC8, CC7, CC6, CC5, 
     X   CC4, CC3, CC2, CC1
       DS12 = 1.
       RS21 = 0.
       IS21 = -10
       HS22 = -20_2
       HS21 = -10_2
       IS31 = 1
       RS31 = 0.
       DS32 = 0D0
       DS31 = 0D0
       DATA DV31/0.,5.,3.,6.,5.,6.,4*0./ 

       DV11(1,1) = 0.
       DV11(2,1) = 0.
       DV11(3,1) = 0.
       DV11(4,1) = 0.
       DV11(1,2) = 0.
       DV11(2,2) = 0.
       DV11(3,2) = 0.
       DV11(4,2) = 0.
       DV11(1,3) = 0.
       DV11(2,3) = 0.
       DV11(3,3) = 0.
       DV11(4,3) = 0.
       DV11(1,4) = 0.
       DV11(2,4) = 0.
       DV11(3,4) = 0.
       DV11(4,4) = 0.
       CV11(1,1) = (0., 0.)
       CV11(2,1) = (0., 0.)
       CV11(3,1) = (0., 0.)
       CV11(4,1) = (0., 0.)
       CV11(1,2) = (0., 0.)
       CV11(2,2) = (0., 0.)
       CV11(3,2) = (0., 0.)
       CV11(4,2) = (0., 0.)
       CV11(1,3) = (0., 0.)
       CV11(2,3) = (0., 0.)
       CV11(3,3) = (0., 0.)
       CV11(4,3) = (0., 0.)
       CV11(1,4) = (0., 0.)
       CV11(2,4) = (0., 0.)
       CV11(3,4) = (0., 0.)
       CV11(4,4) = (0., 0.)
       IS22 = 0

       CALL INIT (DV12,DV13,CV12,CV13)
       RR6 = DV13(1,1)
       RR7 = DV13(1,2)
       RR8 = DV13(1,3)
       RR9 = DV13(1,4)
       RR10 = DV13(2,1)
       RR11 = DV13(2,2)
       RR12 = DV13(2,3)
       RR13 = DV13(2,4)
       RR14 = DV13(3,1)
       RR15 = DV13(3,2)
       RR16 = DV13(3,3)
       RR17 = DV13(3,4)
       RR18 = DV13(4,1)
       RR19 = DV13(4,2)
       RR20 = DV13(4,3)
       RR21 = DV13(4,4)

       RR22 = DV12(1,1) * RR6
       RR23 = DV12(2,1) * RR6
       RR24 = DV12(3,1) * RR6
       RR3 = DV12(4,1) * RR6
       RR25 = DV12(1,1) * RR7
       RR26 = DV12(2,1) * RR7
       RR27 = DV12(3,1) * RR7
       RR4 = DV12(4,1) * RR7
       RR28 = DV12(1,1) * RR8
       RR29 = DV12(2,1) * RR8
       RR30 = DV12(3,1) * RR8
       RR5 = DV12(4,1) * RR8
       RR31 = DV12(1,1) * RR9
       RR32 = DV12(2,1) * RR9
       RR33 = DV12(3,1) * RR9
       RR2 = DV12(4,1) * RR9
       DV11(1,1) = DV11(1,1) + RR22
       DV11(2,1) = DV11(2,1) + RR23
       DV11(3,1) = DV11(3,1) + RR24
       DV11(4,1) = DV11(4,1) + RR3
       DV11(1,2) = DV11(1,2) + RR25
       DV11(2,2) = DV11(2,2) + RR26
       DV11(3,2) = DV11(3,2) + RR27
       DV11(4,2) = DV11(4,2) + RR4
       DV11(1,3) = DV11(1,3) + RR28
       DV11(2,3) = DV11(2,3) + RR29
       DV11(3,3) = DV11(3,3) + RR30
       DV11(4,3) = DV11(4,3) + RR5
       DV11(1,4) = DV11(1,4) + RR31
       DV11(2,4) = DV11(2,4) + RR32
       DV11(3,4) = DV11(3,4) + RR33
       DV11(4,4) = DV11(4,4) + RR2
       RR22 = DV12(1,2) * RR10
       RR23 = DV12(2,2) * RR10
       RR24 = DV12(3,2) * RR10
       RR3 = DV12(4,2) * RR10
       RR25 = DV12(1,2) * RR11
       RR26 = DV12(2,2) * RR11
       RR27 = DV12(3,2) * RR11
       RR4 = DV12(4,2) * RR11
       RR28 = DV12(1,2) * RR12
       RR29 = DV12(2,2) * RR12
       RR30 = DV12(3,2) * RR12
       RR5 = DV12(4,2) * RR12
       RR31 = DV12(1,2) * RR13
       RR32 = DV12(2,2) * RR13
       RR33 = DV12(3,2) * RR13
       RR2 = DV12(4,2) * RR13
       DV11(1,1) = DV11(1,1) + RR22
       DV11(2,1) = DV11(2,1) + RR23
       DV11(3,1) = DV11(3,1) + RR24
       DV11(4,1) = DV11(4,1) + RR3
       DV11(1,2) = DV11(1,2) + RR25
       DV11(2,2) = DV11(2,2) + RR26
       DV11(3,2) = DV11(3,2) + RR27
       DV11(4,2) = DV11(4,2) + RR4
       DV11(1,3) = DV11(1,3) + RR28
       DV11(2,3) = DV11(2,3) + RR29
       DV11(3,3) = DV11(3,3) + RR30
       DV11(4,3) = DV11(4,3) + RR5
       DV11(1,4) = DV11(1,4) + RR31
       DV11(2,4) = DV11(2,4) + RR32
       DV11(3,4) = DV11(3,4) + RR33
       DV11(4,4) = DV11(4,4) + RR2
       RR22 = DV12(1,3) * RR14
       RR23 = DV12(2,3) * RR14
       RR24 = DV12(3,3) * RR14
       RR3 = DV12(4,3) * RR14
       RR25 = DV12(1,3) * RR15
       RR26 = DV12(2,3) * RR15
       RR27 = DV12(3,3) * RR15
       RR4 = DV12(4,3) * RR15
       RR28 = DV12(1,3) * RR16
       RR29 = DV12(2,3) * RR16
       RR30 = DV12(3,3) * RR16
       RR5 = DV12(4,3) * RR16
       RR31 = DV12(1,3) * RR17
       RR32 = DV12(2,3) * RR17
       RR33 = DV12(3,3) * RR17
       RR2 = DV12(4,3) * RR17
       DV11(1,1) = DV11(1,1) + RR22
       DV11(2,1) = DV11(2,1) + RR23
       DV11(3,1) = DV11(3,1) + RR24
       DV11(4,1) = DV11(4,1) + RR3
       DV11(1,2) = DV11(1,2) + RR25
       DV11(2,2) = DV11(2,2) + RR26
       DV11(3,2) = DV11(3,2) + RR27
       DV11(4,2) = DV11(4,2) + RR4
       DV11(1,3) = DV11(1,3) + RR28
       DV11(2,3) = DV11(2,3) + RR29
       DV11(3,3) = DV11(3,3) + RR30
       DV11(4,3) = DV11(4,3) + RR5
       DV11(1,4) = DV11(1,4) + RR31
       DV11(2,4) = DV11(2,4) + RR32
       DV11(3,4) = DV11(3,4) + RR33
       DV11(4,4) = DV11(4,4) + RR2
       RR22 = DV12(1,4) * RR18
       RR23 = DV12(2,4) * RR18
       RR24 = DV12(3,4) * RR18
       RR3 = DV12(4,4) * RR18
       RR25 = DV12(1,4) * RR19
       RR26 = DV12(2,4) * RR19
       RR27 = DV12(3,4) * RR19
       RR4 = DV12(4,4) * RR19
       RR28 = DV12(1,4) * RR20
       RR29 = DV12(2,4) * RR20
       RR30 = DV12(3,4) * RR20
       RR5 = DV12(4,4) * RR20
       RR31 = DV12(1,4) * RR21
       RR32 = DV12(2,4) * RR21
       RR33 = DV12(3,4) * RR21
       RR2 = DV12(4,4) * RR21
       DV11(1,1) = DV11(1,1) + RR22
       DV11(2,1) = DV11(2,1) + RR23
       DV11(3,1) = DV11(3,1) + RR24
       DV11(4,1) = DV11(4,1) + RR3
       DV11(1,2) = DV11(1,2) + RR25
       DV11(2,2) = DV11(2,2) + RR26
       DV11(3,2) = DV11(3,2) + RR27
       DV11(4,2) = DV11(4,2) + RR4
       DV11(1,3) = DV11(1,3) + RR28
       DV11(2,3) = DV11(2,3) + RR29
       DV11(3,3) = DV11(3,3) + RR30
       DV11(4,3) = DV11(4,3) + RR5
       DV11(1,4) = DV11(1,4) + RR31
       DV11(2,4) = DV11(2,4) + RR32
       DV11(3,4) = DV11(3,4) + RR33
       DV11(4,4) = DV11(4,4) + RR2
       CC5 = CV13(1,1)
       CC6 = CV13(1,2)
       CC7 = CV13(1,3)
       CC8 = CV13(1,4)
       CC9 = CV13(2,1)
       CC10 = CV13(2,2)
       CC11 = CV13(2,3)
       CC12 = CV13(2,4)
       CC13 = CV13(3,1)
       CC14 = CV13(3,2)
       CC15 = CV13(3,3)
       CC16 = CV13(3,4)
       CC17 = CV13(4,1)
       CC18 = CV13(4,2)
       CC19 = CV13(4,3)
       CC20 = CV13(4,4)
       DO J=1,4
        CC2 = CV12(J,1) * CC5
        CC3 = CV12(J,1) * CC6
        CC4 = CV12(J,1) * CC7
        CC1 = CV12(J,1) * CC8
        CC21 = CV11(J,1) + CC2
        CC22 = CV11(J,2) + CC3
        CC23 = CV11(J,3) + CC4
        CC24 = CV11(J,4) + CC1
        CC2 = CV12(J,2) * CC9
        CC3 = CV12(J,2) * CC10
        CC4 = CV12(J,2) * CC11
        CC1 = CV12(J,2) * CC12
        CC21 = CC21 + CC2
        CC22 = CC22 + CC3
        CC23 = CC23 + CC4
        CC24 = CC24 + CC1
        CC2 = CV12(J,3) * CC13
        CC3 = CV12(J,3) * CC14
        CC4 = CV12(J,3) * CC15
        CC1 = CV12(J,3) * CC16
        CC21 = CC21 + CC2
        CC22 = CC22 + CC3
        CC23 = CC23 + CC4
        CC24 = CC24 + CC1
        CC2 = CV12(J,4) * CC17
        CC3 = CV12(J,4) * CC18
        CC4 = CV12(J,4) * CC19
        CC1 = CV12(J,4) * CC20
        CC21 = CC21 + CC2
        CC22 = CC22 + CC3
        CC23 = CC23 + CC4
        CC24 = CC24 + CC1
        CV11(J,4) = CC24
        CV11(J,3) = CC23
        CV11(J,2) = CC22
        CV11(J,1) = CC21
       END DO

       DO K=1,4
        DO J=1,4
         DO I=1,4

          IF (DS12 .GT. DV12(I,I)) THEN
           DS12 = DV12(I,I)
          END IF
         END DO
        END DO
       END DO

       WRITE (6, *) '### DV11 ###'
       WRITE (6, 91) DV11
       WRITE (6, *) '### DV12 ###'
       WRITE (6, 91) DV12
       WRITE (6, *) '### DV13 ###'
       WRITE (6, 91) DV13
       WRITE (6, *) '### CV11 ###'
       WRITE (6, 91) CV11
       WRITE (6, *) '### CV12 ###'
       WRITE (6, 91) CV12
       WRITE (6, *) '### CV13 ###'
       WRITE (6, 91) CV13
       WRITE (6, *) '### DS12 ###'
       WRITE (6, 97) DS12
   91  FORMAT(4(2X,D14.7))

       DO I=1,10
        IF (LV21(I) .OR. LV21(11-I)) THEN
         RS21 = MAX (RS21, RV21(I) * RV21(I), RV21(I) * 2, 2 + RV21(I))
         IF (LV21(I)) THEN
          RV21(I) = I * RR1
         END IF
        END IF

        IS22 = MIN (IS22, ABS (IV21(I)))
       END DO

       DO I=1,10

        IF (IV21(I) .GT. IS21) THEN
         IS21 = IV21(I)
         HS21 = I
         HS22 = RV21(I)
        END IF
       END DO

       WRITE (6, *) '### RS21 ###'
       WRITE (6, 97) RS21
       WRITE (6, *) '### RV21 ###'
       WRITE (6, 93) RV21
       WRITE (6, *) '### IV21 ###'
       WRITE (6, 99) IV21
       WRITE (6, *) '### IS21 ###'
       WRITE (6, *) IS21
       WRITE (6, *) '### HS21 ###'
       WRITE (6, *) HS21
       WRITE (6, *) '### HS22 ###'
       WRITE (6, *) HS22
       WRITE (6, *) '### IS22 ###'
       WRITE (6, *) IS22
   93  FORMAT(5(1X,D14.7))
   99  FORMAT(5(1X,I4))


       DO I=1,6,5
        IS31 = MAX (IS31, IV31(I))
        DS31 = MAX (DS31, DV31(I))
        IS31 = MAX (IS31, IV31(I+1))

        DS31 = MAX (DS31, DV31(I+1))
        IS31 = MAX (IS31, IV31(I+2))

        DS31 = MAX (DS31, DV31(I+2))
        IS31 = MAX (IS31, IV31(I+3))

        DS31 = MAX (DS31, DV31(I+3))
        IS31 = MAX (IS31, IV31(I+4))

        DS31 = MAX (DS31, DV31(I+4))
       END DO


       DO I=1,10

        IF (DV31(I) .GT. DS32) THEN
         RS31 = DV31(I-1)
         DS32 = DV31(I)
        END IF
       END DO

       WRITE (6, *) '### IS31 ###'
       WRITE (6, *) IS31
       WRITE (6, *) '### DS31 ###'
       WRITE (6, 97) DS31
       WRITE (6, *) '### RS31 ###'
       WRITE (6, 97) RS31
       WRITE (6, *) '### DS32 ###'
       WRITE (6, 97) DS32
       WRITE (6, *) '### IV31 ###'
       WRITE (6, 99) IV31
       WRITE (6, *) '### DV31 ###'
       WRITE (6, 95) DV31
   95  FORMAT(5(1X,D14.7))
   97  FORMAT(D14.7)

       STOP 
      END
    
      SUBROUTINE INIT ( DV12, DV13, CV12, CV13 )

       REAL*4 DV12(16), DV13(16)
       COMPLEX*8 CV12(16), CV13(16)
       INTEGER II4, II3, II2, II1
       REAL RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1

       DO I=1,13,4
        II2 = (-1) ** I
        II3 = (-1) ** (I + 1)
        II4 = (-1) ** (I + 2)
        II1 = (-1) ** (I + 3)
        RR1 = II2 * I
        RR2 = II3 * (I + 1)
        RR3 = II4 * (I + 2)
        RR4 = II1 * (I + 3)
        RR5 = 1 - I
        RR6 = -I
        RR7 = -1 - I
        RR8 = -2 - I
        CV12(I) = CMPLX (I, I)
        CV12(I+1) = CMPLX (I + 1, I + 1)
        CV12(I+2) = CMPLX (I + 2, I + 2)
        CV12(I+3) = CMPLX (I + 3, I + 3)
        CV13(I) = CMPLX (RR1, RR5)
        CV13(I+1) = CMPLX (RR2, RR6)
        CV13(I+2) = CMPLX (RR3, RR7)
        CV13(I+3) = CMPLX (RR4, RR8)
        DV13(I+3) = RR8
        DV13(I+2) = RR7
        DV13(I+1) = RR6
        DV13(I) = RR5
        DV12(I+3) = RR4
        DV12(I+2) = RR3
        DV12(I+1) = RR2
        DV12(I) = RR1
       END DO

       DV12(16) = 0.5

       RETURN 
      END
