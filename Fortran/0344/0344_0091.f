       REAL*8 A(10)/10*0/
       REAL*8 B(10)/10*0/
       REAL*8 C(10)/10*0/
       INTEGER*4 I
C
       DO 10 I=1,10
         A(I) = DSIN(DFLOAT(I))
         B(I) = DCOS(DFLOAT(I+1))
         C(I) = DTAN(DFLOAT(I+2))
   10  CONTINUE
C
       DO 20 I=1,10
         IF(A(I).LT.0) GOTO 30
         IF(A(5).LT.0) THEN
           A(I) = B(I)
         ELSE
           B(I) = C(I)
         ENDIF
         C(I) = A(I)
   20  CONTINUE
   30  CONTINUE
C
       DO 40 I=1,10
         IF(A(I).LT.0) THEN
           IF(B(5).LT.0) THEN
             A(I) = B(I) * I
           ENDIF
         ELSE
           IF(A(5).LT.0) THEN
             B(I) = A(I) / I
           ENDIF
         ENDIF
         C(I) = A(I)
   40  CONTINUE
C
       DO 100 I=1,10
         WRITE(6,*) A(I),' ',B(I),' ',C(I)
  100  CONTINUE
C
       STOP
       END
