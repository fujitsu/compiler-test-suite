      CHARACTER*4 CH10(10)
      INTEGER*4 I10(10), I11(10)
      REAL*4 R10(10), R11(10)
      REAL*8 RD10(10,2), RD11(2,10), RD10S
      COMPLEX*8 C10(6,2), C11(6,2)
      COMPLEX*16 CD10(-1:5,2)

      DATA CH10/5*'TEST',5*'ESTE'/ 
      DATA I10/10*0/ 
      DATA I11/5*1,5*2/ 
      DATA C10/6*(1,1),6*(1,2)/ 
      DATA C11/6*(1,1),6*(2,1)/ 
      DATA R10/5*1,5*2/ 
      DATA R11/10*0/ 
      DATA RD10/5*1.5,5*2.5,5*3.5,5*4.5/ 
      DATA RD11/13*1.5,6*0.5,2.5/ 
      DATA CD10/7*(0.5,0.5),7*(1.5,1.5)/ 

      INTEGER*4 I20(10), I21(10,2), I22(10,2), I23(10,2)
      REAL*4 R20(5,2)
      NAMELIST /OUT/I21

      DATA R20/1,2,3,4,5,6,7,8,9,10/ 
      DATA I20/1,2,3,4,5,1,2,3,4,5/ 
      DATA I21/10*4,10*8/ 
      DATA I23/5*1,5*2,5*3,5*4/ 

      INTEGER*4 I30(10), I31(10), I32(2), I33(2)
      REAL*4 R30(10,2), R31(10,2), R32(2,10)
      REAL*8 RD30S, RD30(10,2), RD31(2)
      REAL*8 Q30(10)
      INTEGER I30S, N1, N, I10S, N2, N5, N10
      PARAMETER (I30S = 2, N1 = 5, N = 2, I10S = 3, N2 = 2)
      PARAMETER (N5 = 5, N10 = 10)
      INTEGER II28, II27, II26, II25, II24, II23, II22, II21, II20, II19
     X  , II18, II17, II16, II15, II14, II13, II12, II11, II10, II9, II8
     X  , II7, II6, II5, II4, II3, II2, J1, II1
      REAL RR4, RR3, RR2, RR1
      DOUBLE PRECISION DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1
      I20S = 0

      RD30S = 3D0
      DATA I30/10*0/ 
      DATA R30/20*0/ 
      DATA R31/5*1,5*0,5*2,5*3/ 
      DATA R32/20*0/ 
      DATA RD30/20*0/ 
      DATA Q30/0,1,2,3,4,5,6,7,8,9/ 
      DATA I31/5*1,5*2/ 
      DATA I32/2*0/ 
      DATA I33/2*1/ 
      DATA RD31/0,0/ 

      WRITE (6, *) '----- TEST NO.1 -----'
      DO I=2,5
       IF (CH10(I) .NE. 'TEST') THEN
        II2 = I11(I) * 3
        I10(I) = II2
       END IF
      END DO
      DO II1=1,2,1

       DO I=1,5
        IF (C10(I,II1) .EQ. C11(I,II1)) THEN
         C10(I,II1) = C10(I,II1) / C11(I,II1)
        END IF
       END DO

       CD10(2,II1) = RD10(2,II1) + RD11(II1,2) + CD10(1,II1)
       CD10(3,II1) = RD10(3,II1) + RD11(II1,3) + CD10(2,II1)
       CD10(4,II1) = RD10(4,II1) + RD11(II1,4) + CD10(3,II1)
       CD10(5,II1) = RD10(5,II1) + RD11(II1,5) + CD10(4,II1)
      END DO
      DO II1=1,2,1

       R11S = R10(2)
       R11(2) = R11(1) + R11S
       R11S = R10(3)
       R11(3) = R11(2) + R11S
       R11S = R10(4)
       R11(4) = R11(3) + R11S
       R11S = R10(5)
       R11(5) = R11(4) + R11S
      END DO

      WRITE (6, *) 'I10  = ', I10
      WRITE (6, *) 'C10  = ', C10
      WRITE (6, *) 'R11S = ', R11S
      WRITE (6, *) 'R11  = ', R11
      WRITE (6, *) 'CD10 = ', CD10

      WRITE (6, *) '----- TEST NO.2 -----'

      DO K=1,10
       II3 = I20(K)
       I20S = I20S + II3
       I20S = I20S + II3
      END DO
      DO I=1,2

       DO L=1,10
        WRITE (6, OUT) 
       END DO
      END DO
      DO I=1,2
       DO J1=1,5
        IF (R20(J1,I) .LE. 0) THEN
         STOP 
        END IF
       END DO

       DO M=1,6,5
        II9 = I21(M,I) / 4
        II10 = I21(M+1,I) / 4
        II11 = I21(M+2,I) / 4
        II12 = I21(M+3,I) / 4
        II13 = I21(M+4,I) / 4
        II14 = II9 + I23(M,I)
        II15 = II10 + I23(M+1,I)
        II16 = II11 + I23(M+2,I)
        II17 = II12 + I23(M+3,I)
        II18 = II13 + I23(M+4,I)
        I23(M+4,I) = II18
        I23(M+3,I) = II17
        I23(M+2,I) = II16
        I23(M+1,I) = II15
        I23(M,I) = II14
        I22(M+4,I) = II13
        I22(M+3,I) = II12
        I22(M+2,I) = II11
        I22(M+1,I) = II10
        I22(M,I) = II9
       END DO
      END DO


      WRITE (6, *) ' I20S = ', I20S
      WRITE (6, *) ' I22  = ', I22
      WRITE (6, *) ' I23  = ', I23

      WRITE (6, *) '----- TEST NO.3 -----'
      DO I=1,2
       DO J1=1,6,5
        II19 = I30(J1) + J1
        II20 = I30(J1+1) + J1 + 1
        II21 = I30(J1+2) + J1 + 2
        II22 = I30(J1+3) + J1 + 3
        II23 = I30(J1+4) + J1 + 4
        I30(J1+4) = II23
        I30(J1+3) = II22
        I30(J1+2) = II21
        I30(J1+1) = II20
        I30(J1) = II19
       END DO

       DO L=1,6,5
        DD1 = RD30S
        RD30(L,I) = DD1
        RD30S = DD1 + RD30S
        II24 = I30(L) + RD30S
        DD2 = RD30S
        RD30(L+1,I) = DD2
        I30(L) = II24
        RD30S = DD2 + RD30S
        II25 = I30(L+1) + RD30S
        DD3 = RD30S
        RD30(L+2,I) = DD3
        I30(L+1) = II25
        RD30S = DD3 + RD30S
        II26 = I30(L+2) + RD30S
        DD4 = RD30S
        RD30(L+3,I) = DD4
        I30(L+2) = II26
        RD30S = DD4 + RD30S
        II27 = I30(L+3) + RD30S
        DD5 = RD30S
        RD30(L+4,I) = DD5
        I30(L+3) = II27
        RD30S = DD5 + RD30S
        II28 = I30(L+4) + RD30S
        I30(L+4) = II28
       END DO

       DO M=1,6,5
        II5 = I30(M) / I31(M)
        II6 = I30(M+1) / I31(M+1)
        II7 = I30(M+2) / I31(M+2)
        II8 = I30(M+3) / I31(M+3)
        II4 = I30(M+4) / I31(M+4)
        DD6 = Q30(M) + II5
        DD7 = Q30(M+1) + II6
        DD8 = Q30(M+2) + II7
        DD9 = Q30(M+3) + II8
        DD10 = Q30(M+4) + II4
        Q30(M+4) = DD10
        Q30(M+3) = DD9
        Q30(M+2) = DD8
        Q30(M+1) = DD7
        Q30(M) = DD6
       END DO
       WRITE (6, *) ' LOOP'
      END DO
      DO I=1,2

       DO K=1,6,5
        R30(K,I) = SIN (R31(K,I))
        R30(K+1,I) = SIN (R31(K+1,I))
        R30(K+2,I) = SIN (R31(K+2,I))
        R30(K+3,I) = SIN (R31(K+3,I))
        R30(K+4,I) = SIN (R31(K+4,I))
        RR1 = R31(K,I)
        RR2 = R31(K+1,I)
        RR3 = R31(K+2,I)
        RR4 = R31(K+3,I)
        R30S = R31(K+4,I)
        R32(I,K) = COS (RR1)
        R32(I,K+1) = COS (RR2)
        R32(I,K+2) = COS (RR3)
        R32(I,K+3) = COS (RR4)
        R32(I,K+4) = COS (R30S)
       END DO
      END DO

      I32(1) = I33(1) + R32(1,3)
      I32(2) = I33(2) + R32(2,3)
      RD31(1) = I32(1)
      RD31(2) = I32(2)

      WRITE (6, *) ' I30   = ', I30
      WRITE (6, *) ' R30   = '
      WRITE (6, 10000) R30
10000 FORMAT(7F10.6/)
      WRITE (6, *) ' R32   = '
      WRITE (6, 10000) R32
      WRITE (6, *) ' RD30  = ', RD30
      WRITE (6, *) ' RD30S = ', RD30S
      WRITE (6, *) ' I32   = ', I32
      WRITE (6, *) ' RD31  = ', RD31
      STOP 
      END
