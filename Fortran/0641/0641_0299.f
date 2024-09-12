      REAL*4 R10(10,2), R11(10,2), R12(10,2)
      REAL*8 D10(10,2), D11(10,2)
      COMPLEX*8 C10(10,2), C11(10,2)
      INTEGER*4 I10(10)
      REAL*8 Q10(10,2), Q10S
      LOGICAL*1 LB
      COMPLEX*16 CQ10(10,2)
      INTEGER I10S, N10, N1
      PARAMETER (I10S = 2, N10 = 10, N1 = 1)

      DATA R10/20*0/ 
      DATA R11/4*25,4*36,4*144,4*9,4*100/ 
      DATA R12/10*1,5*0,5*0.333/ 
      DATA D10/10*1,10*2/ 
      DATA D11/5*1,5*2,5*1,5*3/ 
      DATA C10/20*(0,0)/ 
      DATA C11/5*(1,1),5*(0,1),5*(1,0),5*(0,0)/ 
      DATA I10/1,2,3,1,2,3,0,1,2,3/ 
      DATA Q10/20*0/ 
      DATA CQ10/5*1,5*5,3*8,2*2,5*7/ 
      DATA LB/.FALSE./ 


      DO I=2,10
       R10(I,1) = SQRT (R11(I,1)) + SIN (R12(I,1))
       D10(I,1) = D10(I,1) ** D11(I,1) + DBLE (R10(I,1))
       C10(I,1) = CABS (C11(I,1)) + CMPLX (D10(I,1))
       I10(I) = I10(I) * 2 + INT (C10(I,1))

       Q10(I,1) = DBLE (R10(I,1)) + D10(I,1) - DBLE (C10(I,1)) - DREAL (
     X   CQ10(I,1))
       Q10S = Q10(I,1) + I10(1)
       CALL SUB1 (Q10,Q10S)
       WRITE (6, *) ' Q10S = '
       WRITE (6, 10000) Q10S
10000  FORMAT(F15.5/)
       LB = Q10S .GE. Q10(I,1)
       IF (LB) CQ10(I,1) = CMPLX (I10(I))

       R10(I,1) = R10(I,1) + REAL (I10(I)) + SNGL (D10(I,1))
       C10(I,1) = Q10(I,1) + C10(I,1) + CMPLX (I10(I))
       D10(I,1) = D10(I,1) ** D11(I,1) + CABS (C11(I,1)) + CMPLX (D10(I,
     X   1))
       I10(I-1) = INT (C10(I,1)) + Q10S
      END DO

      WRITE (6, *) ' R10  = '
      WRITE (6, 10001) R10
10001 FORMAT(7F10.3/)
      WRITE (6, *) ' D10  = '
      WRITE (6, 10001) D10
      WRITE (6, *) ' C10  = '
      WRITE (6, 10001) C10
      WRITE (6, *) ' I10  = ', I10
      WRITE (6, *) ' Q10  = '
      WRITE (6, 10001) Q10
      WRITE (6, *) ' Q10S = '
      WRITE (6, 10001) Q10S
      WRITE (6, *) ' CQ10 = '
      WRITE (6, 10001) CQ10
      STOP 
      END

      SUBROUTINE SUB1 ( Q10, Q10S )
       REAL*8 Q10(10,2), Q10S
       Q10S = Q10S + Q10(5,1)
       RETURN 
      END
