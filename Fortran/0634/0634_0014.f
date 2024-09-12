      IMPLICIT REAL*8 (D)
      DIMENSION I0110 (10)
      WRITE(6,100)
  100 FORMAT ('1',5X,'====== FORTRAN ======')
      J = 0
      CALL CPUTM ( ITM1,J)
      CALL TRMNL ( M)
      WRITE(6,120)  M
  1200FORMAT(1H0,5X, '=================== M=',I2,' ====================
     1   ======================'/11X,'==========================' /11X,
     2  '==========================' /11X, '=========================='
     3 /11X,'========================' /11X, '========================'
     E  5X, '=======' )
      CALL CPUTM ( ITM2,J)
      DATA  IU , I1000  / 41, 200 /
       IU =10
      WRITE(IU,140) I1000
  140 FORMAT(I10)
      BACK SPACE IU
      READ (IU,140) I6000
      IF(I1000 .EQ. I6000)  GO  TO  180
      WRITE(6,160)
  160 FORMAT(1H0,    'ERROR ========================' )
      REWIND IU
      DATA BRNK/'    '/
      DATA  I0110  / 1,2,3,4,5,6,7,8,9,0 /
      I1=BRNK
      I2=BRNK
      ID= IAND(I1,I2)
      CALL WLOG (ID, I0110  )
  180 CALL CPUTM ( ITM3,J)
      IF( ITM1 .LT. ITM2 .AND. ITM2 .LT.ITM3 )  GO TO  220
      WRITE(6,200) ITM1,ITM2, ITM3
  2000FORMAT(1H0,   'ERROR ============================='  /11X,
     E   3(5X, I10 )  )
  220 DX00 = 0.0
      DO 240 M=1,101
      DX00=DX00+1.0D1
  240 CONTINUE
      IF(DX00.GT.1000)GO TO 400
      CALL FINDET ( IET )
      CALL CPUTM ( ICPUTM)
      IF( IET.GT. ICPUTM )  GO TO  220
      WRITE(6,260)
  2600FORMAT(1H0, 'ERROR ============================================',
     E   '======'  )
  400 IRCODE= 10
      IKCODE=  1
      CALL UEPEND ( IRCODE,IKCODE )
      STOP
      E N D
      SUBROUTINE CPUTM (ITM,J)
      save
      IF(J.NE.0)GO TO 5
      I = 0
      J = 1
    5 I = I+1
      ITM = I
      RETURN
      ENTRY TRMNL (M)
      M = 10
      RETURN
      ENTRY WLOG (ID,I0110)
      ID = I0110 + 10
      RETURN
      ENTRY  ON (I_dummy,J)
      RETURN
      ENTRY FINDET (IET)
      IET = 10
      ENTRY UEPEND (I_dummy,II)
      RETURN
      END
      FUNCTION  IAND(I1,I2)
      I1 = I1 +I2
      RETURN
      END
