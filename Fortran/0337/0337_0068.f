      DIMENSION I(5), J(2,3),K(2,2,2),M(2)
      COMMON J
      EQUIVALENCE (L,I(2)),(I(1),J(2,2)),(J(2,3),K(2,2,1)),(I(5),M(1)),
     *(N,L)
      LOGICAL I,J,K,L,M,N,B,C
      J(2,1)=.TRUE.
      K(1,1,2)=.FALSE.
      M(2)=.TRUE.
      K(1,2,1)=.FALSE.
      I(1)    =.TRUE.
      CALL SUB(ITM,B,C)
C
      B   =J(1,1)
      C   =.TRUE.
      CALL SUB2(ITM,B,C)
C
      B   =J(1,2)
      C   =.FALSE.
      CALL SUB2(ITM,B,C)
C
      B   =K(1,1,1)
      C   =.FALSE.
      CALL SUB2(ITM,B,C)
C
      B   =L
      C   =.FALSE.
      CALL SUB2(ITM,B,C)
C
      B   =J(1,3)
      C   =.FALSE.
      CALL SUB2(ITM,B,C)
C
      B   =N
      C   =.FALSE.
      CALL SUB2(ITM,B,C)
C
      B   =I(3)
      C   =.TRUE.
      CALL SUB2(ITM,B,C)
C
      B   =J(2,3)
      C   =.TRUE.
      CALL SUB2(ITM,B,C)
C
      B   =K(2,2,1)
      C   =.TRUE.
      CALL SUB2(ITM,B,C)
C
      B   =I(4)
      C   =.FALSE.
      CALL SUB2(ITM,B,C)
C
      B   =M(1)
      C   =.FALSE.
      CALL SUB2(ITM,B,C)
C
      B   =I(5)
      C   =.FALSE.
      CALL SUB2(ITM,B,C)
C
      B   =K(2,1,2)
      C   =.FALSE.
      CALL SUB2(ITM,B,C)
C
      B   =K(1,2,2)
      C   =.TRUE.
      CALL SUB2(ITM,B,C)
C
      B   =K(2,2,2)
      C   =.TRUE.
      CALL SUB2(ITM,B,C)
      STOP 7777
      END
      SUBROUTINE SUB(ITM,B,C)
      DIMENSION A(10)
      COMMON A
      LOGICAL A,B,C
      A(1)=.TRUE.
      A(3)=.FALSE.
      A(6)=.TRUE.
      A(8)=.FALSE.
      A(10)=.TRUE.
      ITM =1
C
      B   =A(2)
      C   =.TRUE.
      CALL SUB2(ITM,B,C)
C
      B   =A(4)
      C   =.TRUE.
      CALL SUB2(ITM,B,C)
C
      B   =A(5)
      C   =.FALSE.
      CALL SUB2(ITM,B,C)
C
      B   =A(7)
      C   =.FALSE.
      CALL SUB2(ITM,B,C)
C
      B   =A(9)
      C   =.TRUE.
      CALL SUB2(ITM,B,C)
      RETURN
      END
      SUBROUTINE SUB2(ITM,B,C)
      LOGICAL B,C
      IF(B.AND.C)GO TO 700
      IF(B.OR.C)GO TO 701
  700 WRITE(6,103)ITM
      GO TO 900
  701 WRITE(6,102)ITM,B,C
  900 ITM =ITM+1
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),14X,L6,20X,L6)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),14X,L6,20X,L6)
      RETURN
      END
