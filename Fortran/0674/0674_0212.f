      PROGRAM MAIN
      REAL*4  A(20,20),B(20,20),C(20,20)
      DATA  M/20/,N/20/
      DATA A/400*0/,B/400*1/,C/400*2/

      DO 21 J=1,20
       IF(J.GT.10) THEN
       DO 10 I=1,10
        A(I,J)=B(I,J)
  10   CONTINUE
       ELSE
       DO 20 I=11,20
        A(I,J)=0.5
  20   CONTINUE
       ENDIF
  21   CONTINUE

      DO 30 J=1,M
       DO 11 I=1,N,2
        C(I,J)=B(I,J)
  11   CONTINUE
       CALL SUB
       DO 29 I=2,N,2
        C(I,J)=0.5
  29   CONTINUE
  30   CONTINUE

      DO 40 J=1,M,5
       DO 41 I=1,N-1,2
        C(I,J)=B(I,J)
  41   CONTINUE
       WRITE(6,*) N
       DO 49 I=1,N,2
        C(I,N)=1.5
  49   CONTINUE
  40   CONTINUE

      DO 50 J=1,M
       IF(J.GT.10) GOTO 58
       DO 51 I=1,N,2
        C(I,J)=B(I,J)
  51   CONTINUE
  58   CONTINUE
       DO 59 I=1,N,2
        A(I,J)=A(I,J)*1.2
  59   CONTINUE
  50   CONTINUE
      WRITE(6,*) A,B,C
      STOP
      END
      SUBROUTINE SUB
      RETURN
      END
