       REAL*8 A(10,10)/100*0/
       REAL*8 B(10,10)/100*0/
       INTEGER*4 I/1/,J/1/,K/1/,L/1/
C
       DO 10 I=1,9
         IF(B(I,J).GT.1000) THEN
           GOTO 30
         ELSE
           DO 20 J=1,9
             A(I+1,J+1) = A(I,J) * J + I
             B(I,J) = A(I,J)
   20      CONTINUE
         ENDIF
   10  CONTINUE
   30  CONTINUE
C
       DO 40 I=1,10
         DO 40 J=1,10
           IF(A(I,J).GT.I*J) THEN
             A(I,J) = I * J
           ELSE
             A(I,J) = I + J
           ENDIF
   40  CONTINUE
C
       DO 50 I=1,10
         DO 50 J=1,10
           IF(A(I,J).GT.0) THEN
             DO 60 K=1,10
               DO 60 L=1,10
                 A(K,L) = B(I,J) - I
   60        CONTINUE
           ELSE
             DO 70 K=1,10
               DO 70 L=1,10
                 A(I,J) = B(I,J) + J
   70        CONTINUE
           ENDIF
   50  CONTINUE
C
       WRITE(6,*) A
       WRITE(6,*) B
C
       STOP
       END
