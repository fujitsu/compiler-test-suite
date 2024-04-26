       REAL*8 A(10)/10*0/
       REAL*8 B(10)/10*0/
       REAL*8 C(10)/10*0/
       REAL*8 D(10)/10*0/
       INTEGER*4 I,X
C
       DO 10 I=1,10
         A(I) = I
         B(I) = I + 1.0
         C(I) = I + 2.0
  10   CONTINUE
C
       X = 0
C
       DO 20 I=1,10
         IF(X.EQ.0) THEN
           A(I) = DSIN(1.1D+0)
         ELSE
           B(I) = DCOS(1.2D+0)
         ENDIF
           C(I) = DTAN(1.3D+0)
  20   CONTINUE
C
       WRITE(6,*) A,B,C
C
       DO 30 I=1,10
         D(I) = I + 2.5
  30   CONTINUE
C
       DO 40 I=1,10
         IF(D(3).EQ.5) THEN
           A(I) = DSINH(2.6D+0)
         ELSE
           B(I) = DCOSH(2.7D+0)
         ENDIF
           C(I) = DTANH(2.8D+0)
  40   CONTINUE
C
       WRITE(6,*) A,B,C
C
       STOP
       END
