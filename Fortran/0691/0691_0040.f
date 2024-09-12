      DIMENSION   L(4)
      WRITE (6,10)
   10 FORMAT (1H1 /2X,29H*FORTRAN*               ENTER)
   20 FORMAT (1H0 /2X,29H*FORTRAN*               EXIT )
      WRITE (6,30)
   30 FORMAT (1H0,26H** PLEASE SET  ASW .... **  )
      WRITE (6,40)
   40 FORMAT (1H0,9X,40HSTOP 9999 WHEN ALL ASW ARE SET ON ... ** )
  100 CONTINUE
      DO  101 I=1,4
      K=0
      CALL SSWTCH (I,K)
      L(I)=K
  101 CONTINUE
      J=1
  110 KK=L(1)
      GO TO ( 200,210),KK
  120 KK=L(2)
      GO TO ( 220,230),KK
  130 KK=L(3)
      GO TO ( 240,250),KK
  140 KK=L(4)
      GO TO ( 260,270),KK
  150 GO TO 500
C
  200 WRITE  (6,1001)
      GO TO  300
  210 WRITE  (6,1002)
      GO TO  300
  220 WRITE  (6,2001)
      GO TO  300
  230 WRITE  (6,2002)
      GO TO  300
  240 WRITE  (6,3001)
      GO TO  300
  250 WRITE  (6,3002)
      GO TO 300
  260 WRITE  (6,4001)
      GO TO 300
  270 WRITE  (6,4002)
  300 J=J+1
      GO TO  (110,120,130,140,150), J
C
  500 DO 501 I=1,4
      IF (L(I).EQ.2)  GO TO 100
  501 CONTINUE
      WRITE (6,20)
 9999 STOP
C
 1001 FORMAT (1H0,10X,25H ..  ASW(1)  .ON.      .. )
 1002 FORMAT (1H0,10X,25H ..  ASW(1)      .OFF. .. )
 2001 FORMAT (1H ,10X,25H ..  ASW(2)  .ON.      .. )
 2002 FORMAT (1H ,10X,25H ..  ASW(2)      .OFF. .. )
 3001 FORMAT (1H ,10X,25H ..  ASW(3)  .ON.      .. )
 3002 FORMAT (1H ,10X,25H ..  ASW(3)      .OFF. .. )
 4001 FORMAT (1H ,10X,25H ..  ASW(4)  .ON.      .. )
 4002 FORMAT (1H ,10X,25H ..  ASW(4)      .OFF. .. )
      END
      SUBROUTINE    SSWTCH(I,K)
      K = 1
      RETURN
      END
