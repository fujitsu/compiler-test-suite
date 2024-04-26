      COMMON A,B,C,D,X(2,2),M,N/BCK1/L1,L2,L3/BCK2/J1,J2,J3,J4,ITM
      LOGICAL A,B,C,D,X,S,T ,M,N,L1,L2,L3,J1,J2,J3,J4
      D   =.TRUE.
      X(2,2)=.FALSE.
      N   =.TRUE.
      L1  =.FALSE.
      J2  =.TRUE.
      J3  =.FALSE.
      CALL SUB1
      I  =15
C
      S   =.TRUE.
      T   =A
      CALL SUB3(S,T,I)
C
      S   =.FALSE.
      T   =X(1,1)
      CALL SUB3(S,T,I)
C
      S   =.TRUE.
      T   =M
      CALL SUB3(S,T,I)
C
      S   =.TRUE.
      T   =L2
      CALL SUB3(S,T,I)
C
      S   =.FALSE.
      T   =J1
      CALL SUB3(S,T,I)
C
      S   =.FALSE.
      T   =J4
      CALL SUB3(S,T,I)
      STOP
      END
      SUBROUTINE SUB1
      COMMON X(12)/BCK2/K(4),ITM/BCK3/A(4,4)
      LOGICAL X,K,A,S,T
      X(1)=.TRUE.
      X(5)=.FALSE.
      X(9)=.TRUE.
      K(1)=.FALSE.
      A(1,1)=.TRUE.
      A(4,3)=.FALSE.
      CALL SUB2
      I   =7
C
      S   =.TRUE.
      T   =X(4)
      CALL SUB3(S,T,I)
C
      S   =.FALSE.
      T   =X(8)
      CALL SUB3(S,T,I)
C
      S   =.TRUE.
      T   =X(10)
      CALL SUB3(S,T,I)
C
      S   =.TRUE.
      T   =K(2)
      CALL SUB3(S,T,I)
C
      S   =.FALSE.
      T   =K(4)
      CALL SUB3(S,T,I)
C
      S   =.FALSE.
      T   =K(3)
      CALL SUB3(S,T,I)
C
      S   =.TRUE.
      T   =A(4,1)
      CALL SUB3(S,T,I)
C
      S   =.FALSE.
      T   =A(4,4)
      CALL SUB3(S,T,I)
      RETURN
      END
      SUBROUTINE SUB2
      COMMON /BCK1/X(3)/BCK3/P(16)/BCK2/L(4),ITM
      LOGICAL X,P,L,S,T
      X(2)=.TRUE.
      L(4)=.FALSE.
      P(4)=.TRUE.
      P(16)=.FALSE.
      I   =1
C
      S   =.FALSE.
      T   =X(1)
      CALL SUB3(S,T,I)
C
      S   =.FALSE.
      T   =L(1)
      CALL SUB3(S,T,I)
C
      S   =.TRUE.
      T   =L(2)
      CALL SUB3(S,T,I)
C
      S   =.FALSE.
      T   =L(3)
      CALL SUB3(S,T,I)
C
      S   =.TRUE.
      T   =P(1)
      CALL SUB3(S,T,I)
C
      S   =.FALSE.
      T   =P(12)
      CALL SUB3(S,T,I)
      RETURN
      END
      SUBROUTINE SUB3(S,T,I)
      LOGICAL S,T
      IF(T.AND.S)GO TO 700
      IF(T.OR.S) GO TO 701
  700 WRITE(6,103)I
      GO TO 900
  701 WRITE(6,102)I,T,S
  900 I =I+1
  102 FORMAT(1H0,12X,7H*ERROR*,7X,2H( ,I2,2H ),14X,L6,20X,L6)
  103 FORMAT(1H0,12X,4H*OK*,10X,2H( ,I2,2H ),14X,L6,20X,L6)
      RETURN
      END
