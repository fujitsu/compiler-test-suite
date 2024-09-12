      PROGRAM MAIN
       PARAMETER (N = 40)
       REAL*4 TW1(100,40), TW2(100), TW3(100)
       DATA TW2/100*1/ 
       DATA TW3/100*1/ 
       INTEGER J

       CALL DATA (TW1,40)
                                                    
       DO K=1,40
        J = 1
        DO I=1,100
         IF (I .GT. 40) THEN
          TW1(I,K) = TW1(I,K) * 2
          TW2(I) = TW3(J) + J
          J = J + 1
          TW3(J) = I
         END IF
        END DO
       END DO
       WRITE (6, 100) TW1, TW2, TW3
  100  FORMAT(1H ,'--- TW1 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,1H ,
     X   '--- TW2 ---',/,1H ,(3X,20(5(F17.6,2X)/)),/,1H ,'--- TW3 ---',/
     X   ,1H ,(3X,20(5(F17.6,2X)/)))
      END

      SUBROUTINE DATA ( X, N )
       REAL X(100,N)
C$OMP PARALLEL SHARED (N,X) PRIVATE (I,J)
C$OMP DO 
       DO I=1,N
        DO J=1,97,4
         X(J,I) = 1.
         X(J+1,I) = 1.
         X(J+2,I) = 1.
         X(J+3,I) = 1.
        END DO
       END DO
C$OMP END DO NOWAIT
C$OMP END PARALLEL 
      END
