       REAL*8 A(10)/10*0/
       REAL*8 B(10,10)/100*0/
       REAL*8 C(10,10,10)/1000*0/
       INTEGER*4 I/1/,J/1/,K/1/
C
       DO 10 I=1,10
         A(I) = I * 10
   10  CONTINUE
C
       DO 20 I=1,10
         DO 20 J=1,10
           B(I,J) = I * J
   20  CONTINUE
C
       DO 30 I=1,10
         DO 30 J=1,10
           DO 30 K=1,10
             C(I,J,K) = I * J + K
   30  CONTINUE
C
       DO 40 I=1,10
         A(I) = A(I) + I
         DO 40 J=1,10
           B(I,J) = A(I) + B(I,J)
           DO 40 K=1,10
             C(I,J,K) = A(I) + B(I,J) + C(I,J,K)
   40  CONTINUE
C
       WRITE(6,*) '/*  A  */'
       WRITE(6,*) A
C
       WRITE(6,*) '/*  B  */'
       DO 1000 I=1,5
         DO 1000 J=1,5
           WRITE(6,*) B(I,J)
 1000  CONTINUE
C
       WRITE(6,*) '/*  C  */'
       DO 2000 I=1,2
         DO 2000 J=1,2
           DO 2000 K=1,2
             WRITE(6,*) C(I,J,K)
 2000  CONTINUE
C
       STOP
       END
