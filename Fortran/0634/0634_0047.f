      WRITE(6,10)
   10 FORMAT('1',5X,'====== FORTRAN ====== ... = TEST =')
      IP=0
      CALL E15001 (IP)
      IF( IP.NE.0 ) GO TO 30
      WRITE(6,20)
   20 FORMAT('0',20X,'= TEST =     OK')
   30 WRITE(6,40)
   40 FORMAT('0',5X,'END RUNUNIT')
      STOP
      END
      SUBROUTINE E15001 (IP)
          EXTERNAL  SLITE,
     *              SLITET,
     *              DUMP,
     *              PDUMP,
     *              DVCHK,
     *              OVERFL,
     *              EXIT
          REAL*8 D(7) /'SLITE','SLITET','DUMP','PDUMP','DVCHK',
     *                 'OVERFL','EXIT' /,DD
  100 FORMAT('0','E15001(',I1,')  NG',5X,A8,4G20.8 )
      NO=1
      CALL SLITE( X,D(1))
      IF( X.EQ.0.0 ) GO TO 10
      IP=IP+1
      WRITE(6,100) NO,D(1),X
   10 NO=2
               DATA Y /9.87654E0/
      CALL SLITET ( X,D(2) )
      IF( X.EQ.Y ) GO TO 20
      IP=IP+1
      WRITE(6,100)NO,D(2),X,Y
   20 NO=3
      CALL DUMP ( DD  ,D(3),NO )
      IF( DD.EQ.1.121314161718D0 ) GO TO 30
      IP=IP+1
      WRITE(6,100)NO,D(3),DD
   30 NO=4
      CALL PDUMP( D(4),D(5),DVCHK,A,IP)
      IF( A.EQ.0.54321 ) GO TO 40
      IP=IP+1
      WRITE(6,100)NO,D(4),A
   40 NO=5
      CALL OVERFL (D(6),D(7),EXIT,A)
      IF(A.EQ.5.2) GO TO 50
      IP=IP+1
      WRITE(6,100)NO,D(6),A
   50 RETURN
      END
      SUBROUTINE SLITE ( X,DATA )
          REAL*8 D(7)/'SLITE','SLITET','DUMP','PDUMP','DVCHK',
     *                'OVERFL','EXIT' / ,DATA,DD
  100 FORMAT('0',10X,A8,T20,A8,T30,'=============================',
     *       '===============')
      IF( DATA.NE.D(1)) GO TO 10
      WRITE(6,100)DATA,D(1)
      X=SIN(0.0)
   10 RETURN
      ENTRY    SLITET ( X,DATA )
      IF( DATA.NE.D(2)) GO TO 20
      WRITE(6,100)DATA,D(2)
      X=9.87654
   20 RETURN
      ENTRY    DUMP   ( DD,DATA,J )
      IF( DATA.NE.D(3) ) GO TO 30
      WRITE(6,100)DATA,D(3)
      DD=1.121314  161718D0
   30 RETURN
      ENTRY    PDUMP  ( DATA,DD,DEVIDE,A,IP)
      IF( DATA.NE.D(4) ) GO TO 40
      WRITE(6,100)DATA,D(4)
   40 Y=DEVIDE(DD,D(5),X )
      IF( X.EQ.1.125 .AND. Y.EQ.1.0 ) GO TO 50
      IP=IP+1
      WRITE(6,200)DD,D(5),X,Y
  200 FORMAT('0',10X,'ENTRY PDUMP NG',5X,2A10,2F20.8 )
   50 A=0.54321
      RETURN
      ENTRY    OVERFL (DATA,DD,STOP,A)
      IF( DATA.NE.D(6))GO TO 60
      WRITE(6,100)D(6),DATA
   60 CALL STOP
      A=5.2
      RETURN
      END
      FUNCTION DVCHK ( DD,DATA,X )
          REAL*8 DD,DATA
      DVCHK=DD/DATA
      X=1.125
      IF( DD.NE.DATA ) GO TO 10
  100 FORMAT('0',10X,A8,T20,A8,T30,'=============================',
     *       '===============')
      WRITE(6,100)DD,DATA
   10 RETURN
      END
      SUBROUTINE EXIT
      WRITE(6,100)
  100 FORMAT('0',10X,'==================',T30,'=====================',
     *       '=======================')
      RETURN
      END
