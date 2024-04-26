      INTEGER*2   A
      INTEGER*4   B
      REAL*4      C
      REAL*8      D
      LOGICAL*1   E
      LOGICAL*4   F
C
      DATA A/0/
      DATA B/0/
      DATA C/0.0/
      DATA D/0.0E+00/
      DATA E/.TRUE./
      DATA F/.FALSE./
C
      CALL SUB(A,B,C,D,E,F)
C
      WRITE(6,*) A,B,C,D,E,F
      STOP
      END
C
      SUBROUTINE SUB(G,H,I,J,K,L)
      INTEGER*2   G
      INTEGER*4   H
      REAL*4      I
      REAL*8      J
      LOGICAL*1   K
      LOGICAL*4   L
C
      G = G
      H = H
      I = I
      J = J
      K = K
      L = L
C
      WRITE(6,*) G,H,I,J,K,L
      RETURN
      END
