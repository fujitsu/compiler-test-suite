      WRITE (6,10)
   10 FORMAT ('1',5X,'====== FORTRAN ======')
      IP = 0
      CALL F12101 (IP)
      CALL F12102 (IP)
      CALL F12103 (IP)
      CALL F12104 (IP)
      CALL F12105 (IP)
      CALL F12106 (IP)
      CALL F12107 (IP)
      CALL F12108 (IP)
      IF (IP.NE.0 ) GO TO 30
      WRITE ( 6,20 )
   20 FORMAT (' ',20X,'= TEST =',5X,'OK')
   30 WRITE (6 ,40 )
   40 FORMAT(1H0,4X,'END RUNUNIT')
      STOP
      END
      SUBROUTINE F12101 (IP)
      DATA I10,J10,K10 / 12,13,14 /
      REWIND 8
      WRITE(8,10) I10
      WRITE(8,10) J10
      WRITE(8,10) K10
      END FILE 8
      REWIND 8
      READ (8,10) I11
   10 FORMAT(I10 )
      IF(I10.EQ.I11) GO TO 500
      WRITE(6,20)
      IP=IP+1
   20 FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'FAIL ==================' )
  500 READ(8,10) J11
      BACK SPACE 8
      READ(8,10) J12
      IF(J11.EQ.J12.AND. J11.EQ.J10 ) GO TO 1000
      WRITE(6,510)
      IP=IP+1
  510 FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'FAIL =====================')
 1000 READ(8,10 ,END=1500 ) K1,K2
      WRITE(6,1010) K1,K2
      IP=IP+1
 10100FORMAT(1H0,20X,'==TEST==',3X,'NG',5X, 'ENDFILE ' /40X,
     E I10,3H ' , I10)
 1500 RETURN
      E N D
      SUBROUTINE F12102 (IP)
      DATA I10,J10,K10 /10,11,12 /
      REWIND 4
      WRITE(4,10) I10
      WRITE(4,10) J10
      WRITE(4,10) K10
      ENDFILE 4
      REWIND 4
      READ(4,10) I11
   10 FORMAT(I10)
      IF(I10.EQ.I11) GO TO 500
      WRITE(6,20) I10,I11
      IP=IP+1
   200FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'FAIL =================' /40X
     E I10, 3H ' ,I10 )
  500 READ(4,10) J11
      BACK SPACE 4
      READ(4,10) J12
      IF(J11.EQ.J12) GO TO 1000
      WRITE(6,510) J11,J12
      IP=IP+1
  5100FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'FAIL ====================='
     E /40X, I10, 3H ' I10 )
 1000 READ(4,10,END=1500) L1,L2
      WRITE(6,1010) L1,L2
      IP=IP+1
 10100FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'FAIL =================='
     E /40X, I10, 3H ' , I10 )
 1500 RETURN
      E N D
      SUBROUTINE F12103 (IP)
      DATA I10,J10,K10 / 10,12,14 /
      COMMON IU
      IU= 3
      REWIND IU
      WRITE(IU,10) I10
      WRITE(IU,10) J10
      WRITE(IU,10) K10
      END FILE IU
   10 FORMAT(I10)
      REWIND IU
      READ(IU,10)I11
      IF(I10.EQ.I11) GO TO 500
      WRITE(6,20) I10,I11
      IP=IP+1
   200FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'FAIL ================='/40X,
     E I10, 3H ' , I10 )
  500 READ(IU,10) J11
      BACK SPACE IU
      READ(IU,10) J12
      IF(J11.EQ.J12) GO TO 1000
      WRITE(6,510) J11,J12
      IP=IP+1
  5100FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'FAIL ====================='
     E /40X, I10, 3H ' ,I10 )
 1000 READ(IU,10,END=1500) L1,L2
      WRITE(6,1010) L1, L2
      IP=IP+1
 10100FORMAT(1H0,20X,'IHF120109',3X,'NG',5X,'FAIL ==================='
     E /40X,I10, 3H ' ,I10 )
 1500 RETURN
      E N D
      SUBROUTINE F12104 (IP)
      DATA IU1/ 1 /,I10,I20,I30/ 10 , 20 , 30 /
      CALL F12110 (IU1,I10,I20,I30,IP )
      RETURN
      E N D
      SUBROUTINE F12110( IU ,I10,I20,I30 ,IP )
      REWIND IU
      WRITE(IU,10) I10
      WRITE(IU,10) I20
      WRITE(IU,10) I30
      END FILE IU
   10 FORMAT(I10)
      REWIND IU
      READ(IU,10) I11
      IF(I10.EQ.I11) GO TO 500
      WRITE(6,20) I10,I11
      IP=IP+1
   200FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'FAIL =================='
     E /40X, I10, 3H ' , I10 )
  500 READ(IU,10) I21
      BACK SPACE IU
      READ(IU,10) I22
      IF(I21.EQ.I22) GO TO 1000
      WRITE(6,510) I21, I22
      IP=IP+1
  5100FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'FAIL ======================'
     E /40X, I10, 3H ' , I10 )
 1000 READ(IU,10, END=1500) I31,I32
      WRITE(6,1010) I31,I32
      IP=IP+1
 10100FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'FAIL ===================='
     E /40X, I10, 3H ' , I10 )
 1500 RETURN
      E N D
      SUBROUTINE F12105 (IP)
      DATA IU / 2 /
      I10 = 100
      I20 = 200
      I30 = 300
      REWIND IU
      WRITE(IU,10) I10
      WRITE(IU,10) I20
      WRITE(IU,10) I30
      END FILE IU
   10 FORMAT(I10)
      REWIND IU
      READ(IU,10) I11
      IF(I10.EQ.I11) GO TO 500
      WRITE(6,20) I10,I11
      IP=IP+1
   200FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'FAIL =================='
     E /40X,I10,3H ' ,I10 )
  500 READ(IU,10) I21
      BACK SPACE IU
      READ(IU,10) I22
      IF(I21.EQ.I22) GO TO 1000
      WRITE(6,510) I21,I22
      IP=IP+1
  5100FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'FAIL ======================'
     E /40X, I10, 3H ' , I10 )
 1000 READ(IU,10, END=1500) L1,L2
      WRITE(6,1010) L1, L2
      IP=IP+1
 10100FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'FAIL ====================='
     E / 40X, I10, 3H ' , I10 )
 1500 RETURN
      E N D
      SUBROUTINE F12106 (IP)
      IMPLICIT REAL (S)
      COMMON/LABEL / IU,S10,S20,S30
      REWIND IU
      WRITE(IU,10) S10
      WRITE(IU,10) S20
      WRITE(IU,10) S30
      END FILE IU
      REWIND IU
   10 FORMAT( A8)
      READ (IU,10) S11
      IF(S10.EQ.S11) GO TO 500
      IP=IP+1
      WRITE(6,20) S10, S11
   200FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'FAIL ================='
     E /40X, A4,3H ' , A4 )
  500 READ(IU,10) S21
      BACK SPACE IU
      READ(IU,10) S22
      IF(S21.EQ.S22) GO TO 1000
      IP=IP+1
      WRITE(6,510) S21,S22
  5100FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'FAIL ===================='
     E /40X, A4 , 3H ' , A4 )
 1000 READ(IU,10,END= 1500) S31,S32
      IP=IP+1
      WRITE(6,1010) S31,S32
 10100FORMAT(1H0,20X,'==TEST==',3X,'NG',5X, 'FAIL ==================='
     E /40X, A4, 3H ' A4 )
 1500 RETURN
      EN D
      BLOCK DATA
      IMPLICIT REAL (S)
      COMMON /LABEL / IU1,S101,S201,S301
      DATA IU1,S101,S201,S301 /3, '1234','2345','3456' /
      END
      SUBROUTINE F12107 (IP)
      IMPLICIT COMPLEX*16 (W)
      EQUIVALENCE (IU1,IU2,IU3,IU4)
      IU4 = 14
     0DATA W10,W20,W30 / ( 0.1234D-2,0.2345D-3) ,(0.3456 D-4,0.4567D-5
     E ) , (0.5678D-6 ,0.6789D-7 ) /
      REWIND IU1
      WRITE(14) W10
      WRITE(14) W20
      END FILE IU2
      REWIND IU2
      READ(IU1) W11
      IF(DREAL(W10).EQ.DREAL(W11) .AND.DIMAG(W10).EQ.DIMAG(W11))
     E GO TO 500
      IP=IP+1
      WRITE(6,20) W10, W11
   200FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'FAIL ================='
     E /40X,2(D15.7 , D15.7 ,5X ) )
  500 READ(IU2) W21
      BACK SPACE IU3
      READ(IU2) W22
      IF(DREAL(W21).EQ.DREAL(W22) .AND.DIMAG(W21).EQ.DIMAG(W22))
     E  GO TO 1000
      IP=IP+1
      WRITE(6,510) W21, W22
  5100FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'FAIL ====================='
     E /40X,2(D15.7, D15.7, 5X ) )
 1000 READ(IU4, END=1500) W31,W32
      IP=IP+1
      WRITE(6,1010) W31, W32
 10100FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,'FAIL ==================='
     E /40X,2(D15.7, D15.7, 5X) )
 1500 RETURN
      E N D
      SUBROUTINE F12108 (IP)
      DATA D10,D20,D30 /1.0D+2,2.0D+3,3.0D+4 /
      DO 1500 IU=10,13
      REWIND IU
      WRITE(IU ) D10
      WRITE(IU ) D20
      WRITE(IU ) D30
      END                                    FILE IU
      REWIND IU
      READ(IU ) D11
      IF(D10.EQ.D11) GO TO 500
      IP=IP+1
      WRITE(6 ,20) IU , D10, D11
   200FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,I4,'FAIL =================='
     E '===' /40X, D17.10, 5X, D17.10 )
  500 READ(IU ) D21
      BACK SPACE IU
      READ(IU ) D22
      IF(D21.EQ.D22) GO TO 1000
      IP=IP+1
      WRITE(6 ,510) IU ,D21, D22
  5100FORMAT(1H0,20X,'==TEST== NG',5X,I4,'FAIL ======================'
     E '===' / 40X, D17.10, 5X, D17.10 )
 1000 READ(IU, END=1500 ) DD1
 1020 READ(IU,END=1500) DD2
      IP=IP+1
      WRITE(6 ,1010) IU, DD1, DD2
 10100FORMAT(1H0,20X,'==TEST==',3X,'NG',5X,I4,'FAIL =================='
     E '=====' /41X, D17.10, 5X, D17.10 )
 1500 CONTINUE
      RETURN
       E N D
