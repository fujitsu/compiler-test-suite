      PROGRAM MAIN
       INTEGER I10(2), I30(2,2,10), LIST(10)
       LOGICAL L10S, L10(10), L30(10,2,2), L20(2,10), L11S, L31(10,2,2)
       REAL R10(10)
       REAL*8 D10S, D10(10), D20(10,2), D30(10,2,2), D11S, D12S, D31(10,
     X   2,2)
       COMPLEX*16 CD10S, CD10(10), CD30(10,2,2), CD20(2,10), CD21(2,2)
       INTEGER N10, N2
       PARAMETER (N10 = 10, N2 = 2)
       INTEGER II2, II1
       DOUBLE PRECISION DD1
       D11S = 5D0
       I11S = 0
       I12S = 0


       DATA I10/1,2/ 
       DATA I30/10*1,10*2,10*3,10*4/ 
       DATA LIST/1,2,3,4,5,6,7,8,9,10/ 
       DATA L10/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L30/40*.FALSE./ 
       DATA L20/2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.TRUE.,
     X   2*.FALSE.,2*.TRUE.,2*.FALSE.,2*.TRUE./ 
       DATA L31/40*.FALSE./ 
       DATA D10/1,2,3,4,5,6,7,8,9,10/ 
       DATA D20/5*1,5*2,5*3,5*4/ 
       DATA D30/10*1,10*2,10*3,10*4/ 
       DATA CD10/4*(4,4),4*(8,8),(1,0),(0,1)/ 
       DATA CD30/10*(1,1),10*(1,0),10*(0,1),10*(2,2)/ 
       DATA R10/10*0/ 
       DATA CD20/20*(0,0)/ 
       DATA CD21/(1,1),(2,2),(3,3),(4,4)/ 
       DATA D31/40*0/ 

       DO I=1,2
        II2 = I10(I)
        DO J=1,2
         II1 = II2
         DD1 = D10(J)
         DO K=1,10
          I10S = II1 * I30(I,J,K)
          L10S = L10(K) .OR. L30(K,J,I)
          IF (L10S) THEN
           D10S = D10(K) + D20(K,J) - D30(K,J,I)
           D12S = D10S
           CD10S = CD10(K) / CD30(K,J,I)
           I11S = I11S + I10S + I
           D11S = DMAX1 (D10(K), D11S)
           L20(J,K) = L10S
           R10(LIST(K)) = D10S + REAL (I)
           CD20(J,LIST(K)) = CD10S
          ELSE
           D10S = D10(LIST(K))
           I12S = I12S - I10S
           CD10S = CD21(J,I) + CD30(LIST(K),J,I)
           D12S = I10S + D30(K,LIST(J),I)
           L31(LIST(K),J,I) = L10S .OR. L20(J,K)
          END IF
          D10S = D10S + DD1
          D31(K,J,I) = D10S + CD10S + D12S
         END DO
        END DO
       END DO

       WRITE (6, *) ' I11S = ', I11S
       WRITE (6, *) ' D11S = ', D11S
       WRITE (6, *) ' L20  = ', L20
       WRITE (6, *) ' R10  = ', R10
       WRITE (6, *) ' CD20 = ', CD20
       WRITE (6, *) ' I12S = ', I12S
       WRITE (6, *) ' L31  = ', L31
       WRITE (6, *) ' D31  = ', D31
       STOP 
      END
