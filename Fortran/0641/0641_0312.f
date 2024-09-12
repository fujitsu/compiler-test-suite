      PROGRAM MAIN

       CALL SUB2
       CALL SUB3
       CALL SUB4
       STOP 
      END

      SUBROUTINE SUB2

       INTEGER I10(10), I11(10), I12(10), I13(10)
       REAL R10(10), R11(10)
       REAL*8 D10(10), D11(10), D12(10), D10S
       COMPLEX C10(10), C11(10), C12(10)
       COMPLEX*16 CD10(10), CD11(10)
       LOGICAL L10(10), L11(10), L12(10), L10S
       INTEGER N, K
       PARAMETER (N = 10, K = 6)

       DATA L10/5*.TRUE.,5*.FALSE./ 
       DATA I10/1,1,1,2,2,2,3,3,3,4/ 
       DATA I11/10*2/ 
       DATA R10/10*8/ 
       DATA R11/2,4,2,4,1,3*3,2*2/ 
       DATA I12/1,2,3,4,5,6,7,8,9,10/ 
       DATA R10S/2/ 
       DATA D10S/0/ 
       DATA D11/4*1,4*2,2*3/ 
       DATA C11/3*(0,1),3*(1,0),3*(1,1),(0,0)/ 
       DATA C12/10*(1,1)/ 
       DATA D12/10*1/ 
       DATA CD11/5*(1,1),2*(1,1),2*(1,0),(0,1)/ 
       DATA I13/1,2,3,4,5,6,7,8,9,10/ 
       INTEGER AA11
       DO AA11=1,6,5
        D10(AA11) = 0D0
        D10(AA11+1) = 0D0
        D10(AA11+2) = 0D0
        D10(AA11+3) = 0D0
        D10(AA11+4) = 0D0
        L11(AA11) = .FALSE.
        L11(AA11+1) = .FALSE.
        L11(AA11+2) = .FALSE.
        L11(AA11+3) = .FALSE.
        L11(AA11+4) = .FALSE.
        C10(AA11) = (0., 0.)
        C10(AA11+1) = (0., 0.)
        C10(AA11+2) = (0., 0.)
        C10(AA11+3) = (0., 0.)
        C10(AA11+4) = (0., 0.)
        L12(AA11) = .FALSE.
        L12(AA11+1) = .FALSE.
        L12(AA11+2) = .FALSE.
        L12(AA11+3) = .FALSE.
        L12(AA11+4) = .FALSE.
        CD10(AA11) = 0
        CD10(AA11+1) = 0
        CD10(AA11+2) = 0
        CD10(AA11+3) = 0
        CD10(AA11+4) = 0
       END DO

       DO I=1,10
        IF (L10(I)) THEN
         R10S = R10(I) / R11(I)
         D10(I12(I)) = I * (-2) + I10(I) + R10(I) + I10(I) * I11(I) * 2


         L11(I) = R10S .GT. R11(I)

         D10S = D10S + D11(I)

         C10(I13(I)) = C11(I) / C12(I)
        ELSE
         I11S = I11(I) + I10(I) + I
         R10S = R10(I) * R11(I)

         L12(I) = I11S * 2 .LE. I11S * I10(I)

         D12(6) = D12(6) + R10S

         CD10(I12(I)) = CD11(I) ** I11S
        END IF
       END DO

       WRITE (6, *) ' D10  = ', D10
       WRITE (6, *) ' L11  = ', L11
       WRITE (6, *) ' D10S = ', D10S
       WRITE (6, *) ' C10  = ', C10
       WRITE (6, *) ' L12  = ', L12
       WRITE (6, *) ' D12  = ', D12
       WRITE (6, *) ' CD10 = ', CD10

       RETURN 
      END

      SUBROUTINE SUB3

       INTEGER I10(10), I11(10), I12(10), I13(10)
       REAL R10(10), R11(10)
       REAL*8 D10(10), D11(10), D12(10), D10S
       COMPLEX C10(10), C11(10), C12(10)
       COMPLEX*16 CD10(10), CD11(10)
       LOGICAL L10(10), L11(10), L12(10), L10S
       INTEGER N, K
       PARAMETER (N = 10, K = 6)

       DATA L10/5*.TRUE.,5*.FALSE./ 
       DATA I10/1,1,1,2,2,2,3,3,3,4/ 
       DATA I11/10*2/ 
       DATA R10/10*8/ 
       DATA R11/2,4,2,4,1,3*3,2*2/ 
       DATA I12/1,2,3,4,5,6,7,8,9,10/ 
       DATA R10S/2/ 
       DATA D10S/0/ 
       DATA D11/4*1,4*2,2*3/ 
       DATA C11/3*(0,1),3*(1,0),3*(1,1),(0,0)/ 
       DATA C12/10*(1,1)/ 
       DATA D12/10*1/ 
       DATA CD11/5*(1,1),2*(1,1),2*(1,0),(0,1)/ 
       DATA I13/1,2,3,4,5,6,7,8,9,10/ 
       INTEGER AA11

       DO AA11=1,6,5
        D10(AA11) = 0D0
        D10(AA11+1) = 0D0
        D10(AA11+2) = 0D0
        D10(AA11+3) = 0D0
        D10(AA11+4) = 0D0
        L11(AA11) = .FALSE.
        L11(AA11+1) = .FALSE.
        L11(AA11+2) = .FALSE.
        L11(AA11+3) = .FALSE.
        L11(AA11+4) = .FALSE.
        C10(AA11) = (0., 0.)
        C10(AA11+1) = (0., 0.)
        C10(AA11+2) = (0., 0.)
        C10(AA11+3) = (0., 0.)
        C10(AA11+4) = (0., 0.)
        L12(AA11) = .FALSE.
        L12(AA11+1) = .FALSE.
        L12(AA11+2) = .FALSE.
        L12(AA11+3) = .FALSE.
        L12(AA11+4) = .FALSE.
        CD10(AA11) = 0
        CD10(AA11+1) = 0
        CD10(AA11+2) = 0
        CD10(AA11+3) = 0
        CD10(AA11+4) = 0
       END DO

       DO I=1,10
        IF (L10(I)) THEN
         R10S = R10(I) / R11(I)
         D10(I12(I)) = I * (-2) + I10(I) + R10(I) + I10(I) * I11(I) * 2


         L11(I) = R10S .GT. R11(I)

         D10S = D10S + D11(I)

         C10(I13(I)) = C11(I) / C12(I)
        ELSE
         I11S = I11(I) + I10(I) + I
         R10S = R10(I) * R11(I)

         L12(I) = I11S * 2 .LE. I11S * I10(I)

         D12(6) = D12(6) + R10S

         CD10(I12(I)) = CD11(I) ** I11S
        END IF
       END DO

       WRITE (6, *) ' D10  = ', D10
       WRITE (6, *) ' L11  = ', L11
       WRITE (6, *) ' D10S = ', D10S
       WRITE (6, *) ' C10  = ', C10
       WRITE (6, *) ' L12  = ', L12
       WRITE (6, *) ' D12  = ', D12
       WRITE (6, *) ' CD10 = ', CD10

       RETURN 
      END

      SUBROUTINE SUB4

       INTEGER I10(10), I11(10), I12(10), I13(10)
       REAL R10(10), R11(10)
       REAL*8 D10(10), D11(10), D12(10), D10S
       COMPLEX C10(10), C11(10), C12(10)
       COMPLEX*16 CD10(10), CD11(10)
       LOGICAL L10(10), L11(10), L12(10), L10S
       INTEGER N, K
       PARAMETER (N = 10, K = 6)

       DATA L10/5*.TRUE.,5*.FALSE./ 
       DATA I10/1,1,1,2,2,2,3,3,3,4/ 
       DATA I11/10*2/ 
       DATA R10/10*8/ 
       DATA R11/2,4,2,4,1,3*3,2*2/ 
       DATA I12/1,2,3,4,5,6,7,8,9,10/ 
       DATA R10S/2/ 
       DATA D10S/0/ 
       DATA D11/4*1,4*2,2*3/ 
       DATA C11/3*(0,1),3*(1,0),3*(1,1),(0,0)/ 
       DATA C12/10*(1,1)/ 
       DATA D12/10*1/ 
       DATA CD11/5*(1,1),2*(1,1),2*(1,0),(0,1)/ 
       DATA I13/1,2,3,4,5,6,7,8,9,10/ 
       INTEGER AA11

       DO AA11=1,6,5
        D10(AA11) = 0D0
        D10(AA11+1) = 0D0
        D10(AA11+2) = 0D0
        D10(AA11+3) = 0D0
        D10(AA11+4) = 0D0
        L11(AA11) = .FALSE.
        L11(AA11+1) = .FALSE.
        L11(AA11+2) = .FALSE.
        L11(AA11+3) = .FALSE.
        L11(AA11+4) = .FALSE.
        C10(AA11) = (0., 0.)
        C10(AA11+1) = (0., 0.)
        C10(AA11+2) = (0., 0.)
        C10(AA11+3) = (0., 0.)
        C10(AA11+4) = (0., 0.)
        L12(AA11) = .FALSE.
        L12(AA11+1) = .FALSE.
        L12(AA11+2) = .FALSE.
        L12(AA11+3) = .FALSE.
        L12(AA11+4) = .FALSE.
        CD10(AA11) = 0
        CD10(AA11+1) = 0
        CD10(AA11+2) = 0
        CD10(AA11+3) = 0
        CD10(AA11+4) = 0
       END DO

       DO I=1,10
        IF (L10(I)) THEN
         R10S = R10(I) / R11(I)
         D10(I12(I)) = I * (-2) + I10(I) + R10(I) + I10(I) * I11(I) * 2


         L11(I) = R10S .GT. R11(I)

         D10S = D10S + D11(I)

         C10(I13(I)) = C11(I) / C12(I)
        ELSE
         I11S = I11(I) + I10(I) + I
         R10S = R10(I) * R11(I)

         L12(I) = I11S * 2 .LE. I11S * I10(I)

         D12(6) = D12(6) + R10S

         CD10(I12(I)) = CD11(I) ** I11S
        END IF
       END DO

       WRITE (6, *) ' D10  = ', D10
       WRITE (6, *) ' L11  = ', L11
       WRITE (6, *) ' D10S = ', D10S
       WRITE (6, *) ' C10  = ', C10
       WRITE (6, *) ' L12  = ', L12
       WRITE (6, *) ' D12  = ', D12
       WRITE (6, *) ' CD10 = ', CD10

       RETURN 
      END
