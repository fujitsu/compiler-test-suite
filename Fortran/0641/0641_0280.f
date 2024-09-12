      PROGRAM MAIN

       LOGICAL*4 L1(10), L2(10), L3(10)
       INTEGER*4 I1(10)
       REAL*4 R1(10), R2(10), R3(10)
       REAL*8 RD1(10), RD2(10)
       COMPLEX*8 C1(10), C2(10), C3(10)
       DATA L1/5*.TRUE.,5*.FALSE./ 
       DATA I1/10*0/ 
       DATA R1/10*0./ 
       DATA RD1/10*0./ 
       DATA L2/10*.FALSE./ 
       DATA L3/2*.FALSE.,2*.TRUE.,6*.TRUE./ 
       DATA R2/10*0./ 
       DATA C1/10*(0.,0.)/ 
       DATA C2/10*(2.,2.)/ 
       DATA C3/10*(1.,1.)/ 
       DATA RD2/10*4./ 
       DATA R3/10*1./ 

       LOGICAL*4 L11(10), L12(10)
       INTEGER*4 I11(10)
       REAL*4 R11(10), S2, S21
       REAL*8 RD11(10), RD12(10), RD13(10)
       COMPLEX*8 C11(10)
       COMPLEX*16 CD11(10), CD12(10)
       DATA L11/10*.FALSE./ 
       DATA L12/5*.TRUE.,5*.FALSE./ 
       DATA R11/5*0.,5*1./ 
       DATA RD11/5*0.,5*2./ 
       DATA C11/10*(0,0)/ 
       DATA CD11/10*(0,0)/ 
       DATA CD12/10*(2,2)/ 
       DATA RD13/1,2,3,1,2,3,1,2,3,1/ 
       DATA I11/1,2,3,4,5,6,7,8,9,10/ 

       LOGICAL*4 L21(10), LS21, LS22
       INTEGER*4 I21(10), I22(10)
       REAL*4 R21(10), R22(10)
       REAL*8 RD21(10), RD22(10)
       COMPLEX*16 CD21(10), CD22(10)
       DOUBLE COMPLEX CS11
       INTEGER J, N
       PARAMETER (CS11 = (1,1), J = 5, N = 10)
       INTEGER AA11
       S2 = 0.
       S21 = 0.
       S3 = 0.
       DATA R21/1,2,3,4,5,6,7,8,9,10/ 
       DATA R22/2,2,2,5,5,5,8,8,8,10/ 
       DATA I21/10*0/ 
       DATA RD21/10*0./ 
       DATA CD21/10*(0,0)/ 
       DATA CD22/10*(1,1)/ 
       DATA L21/10*.FALSE./ 
       DATA I22/1,2,3,4,5,6,7,8,9,10/ 
       DATA LS21/.TRUE./ 
       DATA LS22/.FALSE./ 
       DO AA11=1,6,5
        RD12(AA11) = 0D0
        RD12(AA11+1) = 0D0
        RD12(AA11+2) = 0D0
        RD12(AA11+3) = 0D0
        RD12(AA11+4) = 0D0
        RD22(AA11) = 0D0
        RD22(AA11+1) = 0D0
        RD22(AA11+2) = 0D0
        RD22(AA11+3) = 0D0
        RD22(AA11+4) = 0D0
       END DO

       DO I=1,10
        IF (L1(I)) THEN
         I1(I) = I
         R1(5) = R1(5) + FLOAT (I)
         RD1(I) = SQRT (RD2(I))
         L2(I) = .NOT.L3(I)
         IF (L2(I)) THEN
          I1(I) = -I
          R2(5) = R2(5) - FLOAT (I)
          C1(I) = C2(I) / C3(I)
         ELSE
          I1(I) = I * I
          R3(5) = R3(5) * FLOAT (I)
          C1(I) = C2(I) * C3(I)
         END IF
        ELSE
         I1(I) = I * 2
        END IF
       END DO

       WRITE (6, *) I1, R1, RD1, L2, R2, C1, R3

       DO I=1,10
        IF (.NOT.L11(I) .AND. .NOT.L12(I)) THEN
         R11(I) = FLOAT (I)
         RD11(I) = SQRT (DFLOAT (I))
         IF (RD11(I) .NE. 2D0) S2 = S2 + R11(I)
         C11(I11(I)) = R11(I)
         IF (I .LE. 5) R11(I) = -I
        ELSE
         IF (I .LE. 3) RD12(I) = RD11(I) ** RD13(I)
         L12(I) = RD12(I) .EQ. DFLOAT (I)
         S21 = S21 - R11(I)
        END IF
       END DO

       WRITE (6, *) R11, RD11, S2, C11, CD12, RD12, L12, S21

       DO I=1,10
        IF (R21(I) - R22(I)) 31, 32, 33
   33   I21(I) = I
        RD22(I) = SQRT (DFLOAT (I))
        IF (RD22(I) - 3D0) 34, 35, 36
   34   RD21(I) = SQRT (RD22(I))
        GO TO 30
   35   CD21(I) = CD22(I) + (2.,1.)
        GO TO 30
   36   L21(I22(I)) = .TRUE.
        GO TO 30
   31   I21(I) = -I
        IF (I21(I) .GE. -4) GO TO 38
        RD21(I) = SQRT (DFLOAT (I))
        GO TO 30
   38   CONTINUE
        GO TO 30
   32   S3 = S3 + FLOAT (I) * R22(I)
   30   CONTINUE
       END DO

       WRITE (6, *) I21, R21, RD21, RD22, CD21, L21, S3
       STOP 
      END
