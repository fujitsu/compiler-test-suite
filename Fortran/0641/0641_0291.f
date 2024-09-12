      PROGRAM MAIN
       REAL A(500), B(500), C(1000)
       LOGICAL LA(500), LB(500), LC(1000), LD(1000)
       INTEGER N
       PARAMETER (N = 500)
       DATA A/500*0./ 
       DATA B/500*0./ 
       DATA LA/250*.TRUE.,250*.FALSE./ 
       DATA LB/250*.TRUE.,250*.FALSE./ 
       DATA C/1000*0./ 
       DATA LC/500*.TRUE.,500*.FALSE./ 
       DATA LD/500*.TRUE.,500*.FALSE./ 

       DO I=1,10
        IF (LA(I)) THEN
         IF (LB(I)) THEN
          A(I) = 1.
         END IF
        END IF
       END DO

       DO I=1,500
        IF (LA(I)) THEN
         DO J=1,97,4
          A(J) = J
          A(J+1) = J + 1
          A(J+2) = J + 2
          A(J+3) = J + 3
         END DO
        END IF
       END DO

C$OMP PARALLEL SHARED (LA,A,B) PRIVATE (I)
C$OMP DO 
       DO I=1,500
        IF (LA(I)) THEN
         A(I) = B(I)
        ELSE
         A(I) = -B(I)
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

C$OMP DO 
       DO I=1,500
        IF (LA(I)) THEN
         A(I) = I
        ELSE
         B(I) = -I
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP BARRIER

C$OMP DO 
       DO I=1,500
        IF (LA(I)) THEN
         A(I) = B(I)
        END IF
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
       WRITE (6, *) A
       WRITE (6, *) B
       STOP 
      END
