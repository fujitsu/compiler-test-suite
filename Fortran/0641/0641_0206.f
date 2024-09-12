      PROGRAM MAIN
       REAL A(11,10), B(11,10)
       DATA B/110*-1/ 
       INTEGER K1
       DO K1=1,7,4
        DO J=1,11
         IF (B(J,K1) .NE. 0) THEN
          B(J,K1) = 1.5
         END IF
         A(J,K1) = 1.5
         A(J,K1) = 2.
         IF (B(J,K1+1) .NE. 0) THEN
          B(J,K1+1) = 1.5
         END IF
         A(J,K1+1) = 1.5
         A(J,K1+1) = 2.
         IF (B(J,K1+2) .NE. 0) THEN
          B(J,K1+2) = 1.5
         END IF
         A(J,K1+2) = 1.5
         A(J,K1+2) = 2.
         IF (B(J,K1+3) .NE. 0) THEN
          B(J,K1+3) = 1.5
         END IF
         A(J,K1+3) = 1.5
         A(J,K1+3) = 2.
        END DO
       END DO
       DO K1=9,10,1
        DO J=1,11
         IF (B(J,K1) .NE. 0) THEN
          B(J,K1) = 1.5
         END IF
         A(J,K1) = 1.5
         A(J,K1) = 2.
        END DO
       END DO
       K = 11

       WRITE (6, *) K, A, B
       DO K1=1,7,4
        DO J=1,8,4
         A(J,K1) = 3.
         A(J+1,K1) = 3.
         A(J+2,K1) = 3.
         A(J+3,K1) = 3.
         A(J,K1+1) = 3.
         A(J+1,K1+1) = 3.
         A(J+2,K1+1) = 3.
         A(J+3,K1+1) = 3.
         A(J,K1+2) = 3.
         A(J+1,K1+2) = 3.
         A(J+2,K1+2) = 3.
         A(J+3,K1+2) = 3.
         A(J,K1+3) = 3.
         A(J+1,K1+3) = 3.
         A(J+2,K1+3) = 3.
         A(J+3,K1+3) = 3.
        END DO
        DO J=9,11,1
         A(J,K1) = 3.
         A(J,K1+1) = 3.
         A(J,K1+2) = 3.
         A(J,K1+3) = 3.
        END DO
       END DO
       DO K1=9,10,1
        DO J=1,8,4
         A(J,K1) = 3.
         A(J+1,K1) = 3.
         A(J+2,K1) = 3.
         A(J+3,K1) = 3.
        END DO
        DO J=9,11,1
         A(J,K1) = 3.
        END DO
       END DO
       K = 11
       WRITE (6, *) K, A, B
       DO K1=1,7,4
        DO J=1,11
         IF (B(J,K1) .EQ. 1.5) THEN
          B(J,K1) = B(J,K1) * 3.
         END IF
         A(J,K1) = 4.
         IF (B(J,K1+1) .EQ. 1.5) THEN
          B(J,K1+1) = B(J,K1+1) * 3.
         END IF
         A(J,K1+1) = 4.
         IF (B(J,K1+2) .EQ. 1.5) THEN
          B(J,K1+2) = B(J,K1+2) * 3.
         END IF
         A(J,K1+2) = 4.
         IF (B(J,K1+3) .EQ. 1.5) THEN
          B(J,K1+3) = B(J,K1+3) * 3.
         END IF
         A(J,K1+3) = 4.
        END DO
       END DO
       DO K1=9,10,1
        DO J=1,11
         IF (B(J,K1) .EQ. 1.5) THEN
          B(J,K1) = B(J,K1) * 3.
         END IF
         A(J,K1) = 4.
        END DO
       END DO
       K = 11
       WRITE (6, *) K, A, B
      END
