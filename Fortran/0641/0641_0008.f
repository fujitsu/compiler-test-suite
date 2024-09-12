      REAL*4 R4A(-9:20), R4B(-9:20), RMIN, RDIF, RS(-9:20), RA
      INTEGER*4 IMN, ID, IL, IK, IJ
      COMPLEX*8 CES(-9:20), CES1(-9:20), CES2(-9:20), C8A(-9:20), CEA
      INTEGER J3, J2, J1
      PARAMETER (J3 = 3, J2 = 2, J1 = 1)
      INTEGER II1
      REAL RR8, RR7, RR6, RR5, RR4, RR3, RR2, RR1
      IMN = 0
      RMIN = -110.
      DATA R4A/30*1./ 
      DATA R4B/30*1./ 
      DATA RS/30*1/ 
      DATA CES/30*(1.,1.)/ 
      DATA CES1/30*(1.,1.)/ 
      DATA CES2/30*(1.,1.)/ 
      DATA C8A/30*(1.,1.)/ 


      DO I0=1,6
       ID = 2
       II1 = I0 + 1
       DO I1=-9,5,2
        ID = ID + 1
        IJ = II1
        IK = ID + 1
        IL = I1 + 4
        CALL SUBTST (ID,ID + 1,IJ,IK,IL,R4A,C8A)
       END DO
       WRITE (6, *) 'R4A=', R4A, 'C8A=', C8A
       RR2 = R4A(-9) * R4A(-9)
       RR3 = R4A(-7) * R4A(-7)
       RR4 = R4A(-5) * R4A(-5)
       RR5 = R4A(-3) * R4A(-3)
       RR6 = R4A(-1) * R4A(-1)
       RR7 = R4A(1) * R4A(1)
       RR8 = R4A(3) * R4A(3)
       RR1 = R4A(5) * R4A(5)
       R4B(-9) = R4A(-9) + RR2
       R4B(-7) = R4A(-7) + RR3
       R4B(-5) = R4A(-5) + RR4
       R4B(-3) = R4A(-3) + RR5
       R4B(-1) = R4A(-1) + RR6
       R4B(1) = R4A(1) + RR7
       R4B(3) = R4A(3) + RR8
       R4B(5) = R4A(5) + RR1
       IF (RMIN - R4B(-9)) 18, 18, 17
   17  RMIN = R4B(-9)
       IMN = -9
   18  IF (RMIN - R4B(-7)) 3, 3, 2
    2  RMIN = R4B(-7)
       IMN = -7
    3  IF (RMIN - R4B(-5)) 5, 5, 4
    4  RMIN = R4B(-5)
       IMN = -5
    5  IF (RMIN - R4B(-3)) 7, 7, 6
    6  RMIN = R4B(-3)
       IMN = -3
    7  IF (RMIN - R4B(-1)) 9, 9, 8
    8  RMIN = R4B(-1)
       IMN = -1
    9  IF (RMIN - R4B(1)) 12, 12, 11
   11  RMIN = R4B(1)
       IMN = 1
   12  IF (RMIN - R4B(3)) 14, 14, 13
   13  RMIN = R4B(3)
       IMN = 3
   14  IF (RMIN - R4B(5)) 16, 16, 15
   15  RMIN = R4B(5)
       IMN = 5
 16    WRITE (6, *) 'RMIN=', RMIN, 'IMN=', IMN
      END DO
      STOP 
      END

      SUBROUTINE SUBTST ( N, I, J, K, L, RS, CES )
       INTEGER*4 IS1, I
       REAL*4 RS(J:K)
       COMPLEX*8 CES(L)
       INTEGER II4, II3, II2, II1
       COMPLEX CC4, CC3, CC2, CC1

       II2 = (K - J + 1) / 4
       II1 = J + II2 * 4
C$OMP PARALLEL IF (K .GT. J + 499) SHARED (J,K,RS) PRIVATE (IS1)
C$OMP DO 
       DO IS1=J,K-3,4
        RS(IS1) = IS1
        RS(IS1+1) = IS1 + 1
        RS(IS1+2) = IS1 + 2
        RS(IS1+3) = IS1 + 3
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO IS1=II1,K,1
        RS(IS1) = IS1
       END DO
       II4 = L / 4
       II3 = II4 * 4 + 1
C$OMP PARALLEL IF (L .GT. 142) SHARED (L,CES) PRIVATE (CC1,CC2,CC3,CC4,
C$OMP& IS1)
C$OMP DO 
       DO IS1=1,L-3,4
        CC2 = IS1 * (0.,1.)
        CC3 = (IS1 + 1) * (0.,1.)
        CC4 = (IS1 + 2) * (0.,1.)
        CC1 = (IS1 + 3) * (0.,1.)
        CES(IS1) = IS1 + CC2
        CES(IS1+1) = 1 + IS1 + CC3
        CES(IS1+2) = 2 + IS1 + CC4
        CES(IS1+3) = 3 + IS1 + CC1
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       DO IS1=II3,L,1
        CC1 = IS1 * (0.,1.)
        CES(IS1) = IS1 + CC1
       END DO
       IF (N .LE. MIN (I, K, L)) THEN
C$OMP PARALLEL IF (N .GT. 125) SHARED (N,J,RS,CES) PRIVATE (IS1)
C$OMP DO 
        DO IS1=1,N
         IF (IS1 .GE. J) THEN
          RS(IS1) = RS(IS1) * RS(IS1)
          CES(IS1) = CES(IS1) * CES(IS1)
          RS(IS1) = REAL (CES(IS1))
         END IF
        END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       END IF
       RETURN 
      END
