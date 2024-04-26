      PARAMETER(K=5)
      DIMENSION E(K)
      E(1)=1.0
      CALL SUB(E,K)
      WRITE(*,*)(E(I),I=1,K)
      END

      SUBROUTINE SUB(E,K)
      DIMENSION E(*)
      J=1
      R=0.5
      GO TO 150
  140 R=E(J)
  150 E(J+1)=E(J)+R
      J=J+1
      IF(J.LT.K) GO TO 140
      RETURN
      END
