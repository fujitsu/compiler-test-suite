      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  M/20/,N/20/,J/1/
      DATA A/400*0/,B/400*1/,C/400*2/

       IF(J.GT.M) THEN
         A(1,J)=9.8
       ENDIF

      DO 11 J=1,N
       IF(J.GT.M-10) A(2,J)=9.9
 11   CONTINUE

      DO 12 J=1,N
       IF(J.GT.N-10) GOTO 12
       A(3,J)=10.0
 12   CONTINUE

         J=1
       IF(J.GT.N-5) THEN
         A(1,J)=8.8
       ENDIF
       DO 20 I=1,N/2
       A(I,J)=8.0
 20   CONTINUE

         J=1
       IF(J.GT.M-1) GOTO 31
         B(2,J)=8.7
       DO 30 I=1,N,2
       A(I,J)=8.1
 30   CONTINUE
 31   CONTINUE

      DO 40 J=1,20
       DO 40 I=1,20
         C(I,J)=A(I,J)
 40   CONTINUE

      CALL SUB(A,B,C,N,M)

      WRITE(6,*) A,B,C
      STOP
      END
      SUBROUTINE SUB(A,B,C,N,M)
      REAL*4  A(20,20),B(20,20),C(20,20)

       J=1
       IF(J.GT.M) THEN
         A(1,J)=9.8
       ENDIF

      DO 11 J=1,N
       IF(J.GT.M-10) A(2,J)=9.9
 11   CONTINUE

      DO 12 J=1,N
       IF(J.GT.N-10) GOTO 12
       A(3,J)=10.0
 12   CONTINUE

         J=1
       IF(J.GT.N-5) THEN
         A(1,J)=8.8
       ENDIF
       DO 20 I=1,N/2
       A(I,J)=8.0
 20   CONTINUE

         J=1
       IF(J.GT.M-1) GOTO 31
         B(2,J)=8.7
       DO 30 I=1,N,2
       A(I,J)=8.1
 30   CONTINUE
 31   CONTINUE

      DO 40 J=1,20
       DO 40 I=1,20
         C(I,J)=A(I,J)
 40   CONTINUE

      WRITE(6,*) A,B,C
      STOP
      END
