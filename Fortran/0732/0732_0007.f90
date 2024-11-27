      IMPLICIT INTEGER*2 (A-Z)
      J = 0
      STARTX = -16000
      FINISHX = 16000
      XGRID = 2000
      DO 5 GRIDX = STARTX, FINISHX, XGRID
5     J = J + 1
      if (J/=17)write(6,*) "NG"
      call sub
      print *,'pass'
      END
      subroutine sub
      IMPLICIT INTEGER*2 (A-Z)
      parameter(STARTX = -16000)
      parameter(FINISHX = 16000)
      parameter(XGRID = 2000)
      J = 0
      DO 5 GRIDX = STARTX, FINISHX, XGRID
5     J = J + 1
      if (J/=17)write(6,*) "NG"
      END
