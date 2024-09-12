      WRITE(6,10)
   10 FORMAT('1',5X,'====== FORTRAN-ALPHA TEST PROGRAM ...G0000350',/)
      IP=0
      CALL G35001(IP)
      CALL G35002(IP)
      CALL G35003(IP)
      CALL G35004(IP)
      IF( IP.NE.0 )      GOTO 30
      WRITE(6,20)
   20 FORMAT(21X,'G0000350    OK',/)
   30 WRITE(6,40)
   40 FORMAT(6X,'END RUN UNIT ')
      STOP
      END
      SUBROUTINE    G35001(IP)
      IMPLICIT  COMPLEX*8  (A-B)
      DATA  A/(0.0,0.0)/,B/(1.0,2.0)/
      READ(5,*)  A
      IF( REAL(A).NE.REAL(B).OR.IMAG(A).NE.IMAG(B) ) GOTO 20
      WRITE(6,100)
  100 FORMAT('  =======   G35001   COMPLEX FORMAT CHECK IS SUCCESSFUL')
      RETURN
   20 WRITE(6,200)  A,B
  200 FORMAT('  ============== ... A=(',F5.2,',',F5.2,')',//,21X,'B=(',
     *F5.2,',',F5.2,')',//)
      IP=IP+1
      RETURN
      END
      SUBROUTINE    G35002(IP)
      IMPLICIT COMPLEX*8 (A-D)
      DATA  A/(0.0,0.0)/,B/(1.0,2.0)/
      READ(5,*)  A
      IF( REAL(A).NE.REAL(B).OR.IMAG(A).NE.IMAG(B) )   GOTO 20
      WRITE(6,100)
  100 FORMAT(' =======   G35002   COMPLEX FORMAT CHECK IS SUCCESSFUL')
      RETURN
   20 WRITE(6,200)
  200 FORMAT(' ==============   COMPLEX FORMAT (X.X  ,Y.Y) IS FAILURE')
      WRITE(6,220)  A,B
  220 FORMAT('  A=(',F10.5,5X,',',5X,F10.5,')',//,' B=(',F10.5,5X,',',
     *5X,F10.5,')',//)
      IP=IP+1
      RETURN
      END
      SUBROUTINE    G35003(IP)
      IMPLICIT COMPLEX*8 (A-D)
      DATA  A/(0.0,0.0)/,B/(1.0,2.0)/
      READ(5,*)  A
      IF( REAL(A).NE.REAL(B).OR.IMAG(A).NE.IMAG(B) )   GOTO 20
      WRITE(6,100)
  100 FORMAT(' =======  G35003 IS SUCCESSFUL ')
      RETURN
   20 WRITE(6,200)
  200 FORMAT(' ==============  G35003  COMPLEX FORMAT (1.0,2.0  ) IS
     *FAILURE',//)
      WRITE(6,220)  A,B
  220 FORMAT('  A=(',F10.5,5X,',',5X,F10.5,')',//,' B=(',F10.5,5X,',',
     *5X,F10.5,')',//)
      IP=IP+1
      RETURN
      END
      SUBROUTINE    G35004(IP)
      IMPLICIT COMPLEX*8 (A-D)
      DATA A/(0.0,0.0)/,B/(1.0,2.0)/
      READ(5,*)  A
      IF( REAL(A).NE.REAL(B).OR.IMAG(A).NE.IMAG(B) )   GOTO  20
      WRITE(6,100)
  100 FORMAT(' =======   G35004  IS SUCCESSFUL')
      RETURN
   20 WRITE(6,200)
  200 FORMAT(' ==============  G35004 IS FAILURE ***********  COMPLEX
     *FORMAT IS  (  1.0,2.0)  ',//)
      WRITE(6,220)  A,B
  220 FORMAT('  A=(',F10.5,2X,',',2X,F10.5,')',//,'  B=(',F10.5,2X,',',
     *2X,F10.5,')',//)
      IP=IP+1
      RETURN
      END
