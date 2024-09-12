      PROGRAM MAIN

       LOGICAL*4 L10(10), L11(10), L12(10), L13(10), LV10
       INTEGER*4 I10(10), I11(10), I12(10)
       REAL*4 R10(10), R11(10), R12(10)
       REAL*8 D10(10), DV10
       COMPLEX*8 C10(10), C11(10), C12(10), C13(10), C14(10)
       INTEGER J, IV10, M, L, N
       PARAMETER (J = 5, IV10 = 7, M = 7, L = 5, N = 10)
       DOUBLE PRECISION DD1
       LOGICAL LL3, LL2, LL1

       DV10 = 0D0
       R11V = 0.
       DATA L10/6*.FALSE.,.TRUE.,3*.FALSE./ 
       DATA I10/1,2,3,4,5,6,7,8,9,10/ 
       DATA R10/10*8/ 
       DATA R11/10*6/ 
       DATA C10/10*(1,1)/ 
       DATA L11/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     X   .TRUE.,.FALSE.,.TRUE./ 
       DATA L13/2*.FALSE.,2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE./ 
       DATA I11/10*0/ 
       DATA I12/1,4,9,9,4,1,1,4,9,4/ 
       DATA C11/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),
     X   (10,10)/ 
       DATA C12/(1,1),(1,1),(3,3),(3,3),(5,5),(5,5),(7,7),(7,7),(9,9),
     X   (9,9)/ 
       DATA L12/10*.FALSE./ 
       DATA LV10/.TRUE./ 
       DATA C13/10*(2,2)/ 
       DATA C14/10*(1,2)/ 
       DATA R12/1,2,3,4,5,6,7,8,9,10/ 
       DATA D10/10*0/ 
       LL1 = L10(7)
       LL2 = R10(7) .GT. R11(5)
       LL3 = C14(5) .NE. (1.0,1.0)
       DD1 = D10(5)
                                                                        
       DO I=1,10
        IF (LL1) THEN
         IF (I10(7) .LE. 7) THEN
          GO TO 2
         END IF
         GO TO 5
        END IF
        IF (LL2) THEN
         GO TO 2
        END IF
        GO TO 4

    2   CONTINUE
        C10(I) = I
        DV10 = DV10 + DBLE (C10(I))
        IF (.NOT.L11(I)) THEN

         I11(I) = INT (SQRT (FLOAT (I12(I)))) ** I
         IF (C11(I) .EQ. C12(I)) THEN
          GO TO 3
         END IF
         GO TO 5
        END IF
        L12(I) = .NOT.L13(I)
        C13(I) = C13(I) / C10(I)
        IF (LL3) THEN
         GO TO 3
        END IF
        GO TO 5

    3   CONTINUE
        R10V = I
        R11V = R11V + R12(I) + R10V

    4   CONTINUE
        DD1 = DD1 + I
    5   CONTINUE
       END DO
       D10(5) = DD1
       WRITE (6, *) 'C10  = ', C10
       WRITE (6, *) 'DV10 = ', DV10
       WRITE (6, *) 'I11  = ', I11
       WRITE (6, *) 'L12  = ', L12
       WRITE (6, *) 'C13  = ', C13
       WRITE (6, *) 'R11V = ', R11V
       WRITE (6, *) 'D10  = ', D10
       STOP 
      END
