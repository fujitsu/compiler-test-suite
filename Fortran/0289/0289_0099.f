      PROGRAM MAIN
      COMMON ICHK
      INTEGER WL1,WL2,WM1,WM2
      POINTER (PL1,L1),(PL2,L2),(PM1,M1),(PM2,M2)
      PL1=LOC(WL1)
      PL2=LOC(WL2)
      PM1=LOC(WM1)
      PM2=LOC(WM2)
      ICHK=1
      JJ=2
      KK=3
      L1=ICHK+JJ
      M1=KK+JJ
       CALL SUB
      L2=ICHK+JJ
      M2=KK+JJ
      IF(L2.NE.7) THEN
        WRITE(6,*) '*** NG1 ***'
      ENDIF
      IF(L2.EQ.3) THEN
        WRITE(6,*) '*** NG2 ***'
        GOTO 1
      ENDIF
      WRITE(6,*) 'L1=',L1
      WRITE(6,*) 'L2=',L2
      WRITE(6,*) 'M1=',M1
      WRITE(6,*) 'M2=',M2
      WRITE(6,*) '*** OK ***'
    1 STOP
      END
      SUBROUTINE SUB
      COMMON K
      L=K
      K=5
      RETURN
      END
