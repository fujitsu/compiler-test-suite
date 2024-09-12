      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  M/20/,N/20/
      DATA A/400*0/,B/400*1/,C/400*2/

      DO 10 J=1,20
       IF(J.GT.10) THEN
         A(1,J)=9.8
       ENDIF
 10   CONTINUE

      DO 11 J=1,20
       IF(J.GT.10) A(2,J)=9.9
 11   CONTINUE

      DO 12 J=1,20
       IF(J.GT.10) GOTO 12
       A(3,J)=10.0
 12   CONTINUE

      DO 20 J=1,20,2
       IF(J.GT.10) THEN
         A(1,J)=8.8
       ENDIF
       DO 20 I=1,10
       A(I,J)=8.0
 20   CONTINUE

      DO 30 J=1,20,2
       IF(J.GT.10) GOTO 31
         B(2,J)=8.7
       DO 30 I=1,10,2
       A(I,J)=8.1
 30   CONTINUE
 31   CONTINUE

      DO 40 J=1,20,2
       DO 40 I=1,10,2
       IF(J.GT.15) THEN
         A(I,J)=7.8
       ENDIF
       A(I,J)=7.0
 40   CONTINUE

      DO 50 J=1,20,2
       DO 50 I=1,10,2
         B(I,J)=7.7
       IF(J.GT.10) GOTO 50
       B(I,J)=7.1
 50   CONTINUE

      WRITE(6,*) A,B,C
      STOP
      END
