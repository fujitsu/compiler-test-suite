      PROGRAM MAIN
       REAL*8 DA11(10,10)
       DATA DA11/100*10/ 
       INTEGER*2 HA11(2:9)
       REAL*4 EA11(10), EA12(-1:12), EA13(-1:11)
       DATA EA13/13*10/ 
       DATA EA12/14*9/ 
       DATA EA11/10*0/ 
       REAL*8 DA21(10,10)
       DATA DA21/100*0/ 
       INTEGER*2 HA21(2:9)
       REAL*4 EA21(1:10), EA22(-1:12), EA23(0:11)
       DATA EA23/12*10/ 
       DATA EA22/14*9/ 
       DATA EA21/10*0/ 
       CALL SUB (DA11,HA11,EA11,EA12,EA13,DA21,HA21,EA21,EA22,EA23,10,11
     X   ,12,0,1,(-1))
       STOP 
      END

      SUBROUTINE SUB ( DA11, HA11, EA11, EA12, EA13, DA21, HA21, EA21, 
     X  EA22, EA23, K10, K11, K12, K00, K01, KM1 )
       REAL*8 DA11(10,K01:K10,1)
       INTEGER*2 HA11(2:9,1)
       REAL*4 EA11(K01:K10,1), EA12(KM1:12,1), EA13(KM1:11,1)
       REAL*8 DA21(10,10,1)
       INTEGER*2 HA21(2:9,1)
       REAL*4 EA21(1:10,1), EA22(-1:K12,1), EA23(0:11,1)
       INTEGER N
       PARAMETER (N = 9)
       INTEGER I1
       REAL RR14, RR13, RR12, RR11, RR10, RR9, RR8, RR7, RR6, RR5, RR4, 
     X   RR3, RR2, RR1
       RR1 = EA13(1,1)
       RR2 = EA13(2,1)
       RR3 = EA13(3,1)
       RR4 = EA13(4,1)
       RR5 = EA13(5,1)
       RR6 = EA13(6,1)
       RR7 = EA13(7,1)
       ES1 = EA13(8,1)
       EA12(7,1) = EA13(8,1) * 2
       EA12(6,1) = EA13(7,1) * 2
       EA12(5,1) = EA13(6,1) * 2
       EA12(4,1) = EA13(5,1) * 2
       EA12(3,1) = EA13(4,1) * 2
       EA12(2,1) = EA13(3,1) * 2
       EA12(1,1) = EA13(2,1) * 2
       EA12(0,1) = EA13(1,1) * 2
       EA11(3,1) = RR1
       EA11(4,1) = RR2
       EA11(5,1) = RR3
       EA11(6,1) = RR4
       EA11(7,1) = RR5
       EA11(8,1) = RR6
       EA11(9,1) = RR7
       EA11(10,1) = ES1
       DO I1=2,9
        HA11(I1,1) = 9
        IF (I1 .LT. 8) THEN
         DA11(I1,I1+1,1) = I1
         EA11(I1,1) = I1 * 2
        ELSE
         DA11(I1,I1-1,1) = I1
        END IF
        IF (I1 .NE. 9) THEN
         EA12(10-I1,1) = I1
        END IF
       END DO
       WRITE (6, *) HA11, DA11, EA11, EA12

       RR8 = EA23(1,1)
       RR9 = EA23(2,1)
       RR10 = EA23(3,1)
       RR11 = EA23(4,1)
       RR12 = EA23(5,1)
       RR13 = EA23(6,1)
       RR14 = EA23(7,1)
       ES1 = EA23(8,1)
       EA22(7,1) = EA23(8,1) * 2
       EA22(6,1) = EA23(7,1) * 2
       EA22(5,1) = EA23(6,1) * 2
       EA22(4,1) = EA23(5,1) * 2
       EA22(3,1) = EA23(4,1) * 2
       EA22(2,1) = EA23(3,1) * 2
       EA22(1,1) = EA23(2,1) * 2
       EA22(0,1) = EA23(1,1) * 2
       DA21(3,2,1) = RR8
       DA21(4,3,1) = RR9
       DA21(5,4,1) = RR10
       DA21(6,5,1) = RR11
       DA21(7,6,1) = RR12
       DA21(8,7,1) = RR13
       DA21(9,8,1) = RR14
       DA21(10,9,1) = ES1

       DO I1=2,9
        HA21(I1,1) = 9
        IF (I1 .LT. 8) THEN
         DA21(I1,I1+1,1) = I1
         EA21(I1,1) = I1 * 2
        ELSE
         DA21(I1,I1-1,1) = I1
        END IF
        IF (I1 .NE. 9) THEN
         EA22(10-I1,1) = I1
        END IF
       END DO
       I = 10
       WRITE (6, *) HA21, ((DA21(I,J,1), I=1,10), J=1,10), EA21, EA22
       STOP 
      END
