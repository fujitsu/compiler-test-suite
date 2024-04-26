      PROGRAM MAIN
      LOGICAL L(32),M(32)
      INTEGER P,A,C
      INTEGER*2 H(32)
      DATA B/Z'0'/,A/Z'1'/,P/Z'1'/,J/1175/
C
      DO 20 I=1,32
        P=A*2**I
        M(I)=BTEST(J,I-1)
        C=IAND(J,P)
        IF (C.NE.B) THEN
          L(I)=.TRUE.
          H(I)=1
        ELSE
          L(I)=.FALSE.
          H(I)=0
        ENDIF
        WRITE (6,101) P
   20 CONTINUE
C
      WRITE (6,*) 'M= ',M
      WRITE (6,*) 'H= ',H
      WRITE (6,*) 'L= ',L
  101 FORMAT (Z10)
      STOP
      END
