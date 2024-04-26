      call DLAPS1(1,1)
      call DLAPS1(3,4)
      call DLAPS2
      end

      SUBROUTINE DLAPS1(NB1,NA1)
      IMPLICIT REAL*8 (A-H,O-Z)
      COMPLEX*16 ZAH,ZD,ZN,ZP

      ZP=2
      ZN=2
  150 ZD=3
      DO 100 I1=2,NB1
      ZN=ZN+ZP
  100 CONTINUE

      DO 200 I2=2,NA1
      ZD=ZD+ZP
  200 CONTINUE
      ZAH=ZN+ZD
      print*, 'ZAH=',ZAH
      print*,NB1,NA1,ZD,ZN
  310 CONTINUE
  300 CONTINUE
  600 RETURN
      END

      SUBROUTINE DLAPS2
      IMPLICIT REAL*8 (A-H,O-Z)
      COMPLEX*16 ZAH,ZD,ZN,ZP

      ZP=2
      ZN=2
  150 ZD=3
      DO 100 I1=2,3
      ZN=ZN+ZP
  100 CONTINUE

      DO 200 I2=2,4
      ZD=ZD+ZP
  200 CONTINUE
      ZAH=ZN+ZD
      print*, 'ZAH=',ZAH
      print*,ZD,ZN
  310 CONTINUE
  300 CONTINUE
  600 RETURN
      END
