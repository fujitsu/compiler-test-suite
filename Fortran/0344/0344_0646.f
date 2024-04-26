      REAL*4  A(20),B(20)
      LOGICAL*4 L(20)
      DATA L/20*.FALSE./,N/20/
      DATA  A,B/40*1./
*
      CALL SUB(A,B,L,N)
      DO 20 I=1,20,2
        L(I) =.TRUE.
  20  CONTINUE
      CALL SUB(A,B,L,N)
      STOP
      END
      SUBROUTINE SUB(A,B,L,N)
      REAL*4  A(20),B(20)
      LOGICAL*4 L(N)
      DO 10 I=2,20
        IF (L(I)) THEN
          A(1) = A(1) + B(I)*A(I)
        ENDIF
 10   CONTINUE
      S =0.
      DO 20 I=1,N
        IF (L(I)) THEN
          S = S + B(I) + A(I)
        ENDIF
  20  CONTINUE
      WRITE(6,*) S
      WRITE(6,*) A(1)
      RETURN
      END
