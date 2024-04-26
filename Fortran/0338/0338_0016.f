      PROGRAM MAIN
      IMPLICIT INTEGER*2 (A)
      IMPLICIT INTEGER*4 (B,C)
      IMPLICIT LOGICAL*1 (D-F)
      IMPLICIT LOGICAL*4 (G,H)
      IMPLICIT COMPLEX*8 (I,J)
      IMPLICIT COMPLEX*16(K,L)
      IMPLICIT REAL*4    (M,N)
      IMPLICIT REAL*8    (O,P)
      IMPLICIT CHARACTER (Q)
      WRITE(6,*)'#### START ####'
      AB=10
      BC=10
      CD=10
      DE=.TRUE.
      EF=.TRUE.
      FG=.TRUE.
      GH=.TRUE.
      HI=.TRUE.
      IJ=(10,10)
      JK=(10,10)
      KL=(10,10)
      LM=(10,10)
      MN=10.25
      NO=10.25
      OP=10.25
      PQ=10.25
      QR='O'
      MTOTAL=AB+BC+CD+MN+NO+OP+PQ
      DTOTAL=DE.AND.EF.AND.FG.AND.GH.AND.HI
      ITOTAL=IJ+JK+KL+LM

      IF(MTOTAL.EQ.71) THEN
        WRITE(6,*)'*** OK_1 ***'
      ELSE
        WRITE(6,*)'??? NG_1 ???'
      ENDIF

      IF(DTOTAL) THEN
        WRITE(6,*)'*** OK_2 ***'
      ELSE
        WRITE(6,*)'??? NG_2 ???'
      ENDIF

      IF(ITOTAL.EQ.(40,40)) THEN
        WRITE(6,*)'*** OK_3 ***'
      ELSE
        WRITE(6,*)'??? NG_3 ???'
      ENDIF

      IF(QR.EQ.'O') THEN
        WRITE(6,*)'*** OK_4 ***'
      ELSE
        WRITE(6,*)'??? NG_4 ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
