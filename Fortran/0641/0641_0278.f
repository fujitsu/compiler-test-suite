      PROGRAM MAIN

       COMPLEX*8 C10(10), C11(10), C12(10), C13(10), C14(10), C15(10)
       LOGICAL*4 L10(10), L11(10), L12(10), L13(10)
       INTEGER*4 I10(10), I11(10), I12(10), I13(10), I14(10)
       INTEGER L, N
       COMPLEX C13V, C12V, C11V, C10V
       PARAMETER (L = 3, C13V = (1.5,2.5), C12V = (1,1), C11V = (1,2), 
     X   C10V = (1,2))
       PARAMETER (N = 10)

       DATA C10/5*(1,1),5*(0,0)/ 
       DATA C11/5*(2,2),5*(1,1)/ 
       DATA C12/5*(1,2),5*(1,1)/ 
       DATA C13/10*(1.5,2.5)/ 
       DATA C14/10*(1,2)/ 
       DATA C15/10*(1,2)/ 
       DATA L10/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L11/.TRUE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.,.FALSE.,.FALSE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L12/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     X   .FALSE.,.TRUE.,.FALSE./ 
       DATA L13/10*.TRUE./ 
       DATA I10/10*0/ 
       DATA I11/10*0/ 
       DATA I12/10*0/ 
       DATA I13/10*0/ 
       DATA I14/10*0/ 


       WRITE (6, *) '----- LOOP 1 -----'
       IF (L11(3)) THEN
        IF (C10V .EQ. C11V) THEN
         DO I=1,10
          I10(I) = I
          IF (L10(I)) THEN
           IF (C10(I) .EQ. C12V) THEN
            I11(I) = I
           END IF
          END IF
          IF (C11(I) .NE. C12(I)) THEN
           I12(I) = I
          END IF
          IF (C13V .EQ. C13(I)) THEN
           I13(I) = I
          END IF
          IF (L12(I)) THEN
           IF (L13(3)) THEN
            IF (C14(3) .EQ. C15(3)) THEN
             I14(I) = I
            END IF
           END IF
          END IF
         END DO
        ELSE
         DO I=1,10
          IF (L10(I)) THEN
           IF (C10(I) .EQ. C12V) THEN
            I11(I) = I
           END IF
          END IF
          IF (C11(I) .NE. C12(I)) THEN
           I12(I) = I
          END IF
          IF (C13V .EQ. C13(I)) THEN
           I13(I) = I
          END IF
          IF (L12(I)) THEN
           IF (L13(3)) THEN
            IF (C14(3) .EQ. C15(3)) THEN
             I14(I) = I
            END IF
           END IF
          END IF
         END DO
        END IF
       ELSE
        IF (C10V .EQ. C11V) THEN
         DO I=1,10
          I10(I) = I
          IF (L10(I)) THEN
           IF (C10(I) .EQ. C12V) THEN
            I11(I) = I
           END IF
          END IF
          IF (C11(I) .NE. C12(I)) THEN
           I12(I) = I
          END IF
          IF (L12(I)) THEN
           IF (L13(3)) THEN
            IF (C14(3) .EQ. C15(3)) THEN
             I14(I) = I
            END IF
           END IF
          END IF
         END DO
        ELSE
         DO I=1,10
          IF (L10(I)) THEN
           IF (C10(I) .EQ. C12V) THEN
            I11(I) = I
           END IF
          END IF
          IF (C11(I) .NE. C12(I)) THEN
           I12(I) = I
          END IF
          IF (L12(I)) THEN
           IF (L13(3)) THEN
            IF (C14(3) .EQ. C15(3)) THEN
             I14(I) = I
            END IF
           END IF
          END IF
         END DO
        END IF
       END IF
       WRITE (6, *) I10
       WRITE (6, *) I11
       WRITE (6, *) I12
       WRITE (6, *) I13
       WRITE (6, *) I14
       STOP 
      END
