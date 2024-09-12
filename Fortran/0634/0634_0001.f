      WRITE (6,10)
   10 FORMAT ('1',5X,'====== FORTRAN ======')
      CALL F71101
      CALL F71106
      CALL F71107
      CALL F71120
      WRITE(6,40)
   40 FORMAT(1H ,5X,'END RUN UNIT')
      STOP
      END
      SUBROUTINE F71101
      L0100=2147483647
      L0300=-2147483647
      DATA L0200/2147483647/,L0400/-2147483647/
      WRITE (6,1) L0100,L0200,L0100,L0300,L0400,L0300
    1 FORMAT(1H ,5X,I12,5X,I12,5X,I12/1H ,5X,I12,5X,I12,5X,I12/ )
      RETURN
      END
      SUBROUTINE F71106
      DOUBLE PRECISION D1,D2,D3,D4,E1,E2,E3,E4,E5
      EQUIVALENCE (E4,D4)
      DATA D1/-5D+7/,D2/+7.5D-0/,D3/0D3/,D4/3.5D+0/
      E1=-5D+7
      E5= E1
      E2=+7.5D-0
      E3=0D3
      if (abs(D1-E1)>0.00001D+7 .or. abs(D1-E5)>0.00001D+7 .or.
     +    abs(D2-E2)>0.00001D-0 .or. abs(D3-E3)>0.00001D3  .or.
     +    abs(D4-E4)>0.00001D+0) then
        WRITE(6,100) D1,E1, E5 ,D2,E2, E2      ,D3,E3, E3  ,D4,E4, D4
      endif
  1000FORMAT(4(1H ,5X,D24.17,'  ''  ',D24.17,'  ''  ',D24.17/),5X,
     E'========' )
      RETURN
      END
      SUBROUTINE F71107
      DOUBLE PRECISION D1,D2,E1,E2,E3
      DATA D1/0.72057594037927935D+75/,D2/-0.72057594037927936D+75/
      E1=+0.72057594037927935D+75
      E2=-0.72057594037927936D+75
      E3= E2
      if (abs(D1-E1)>0.00001D+75 .or.
     +    abs(D2-E2)>0.00001D+75 .or. abs(D2-E3)>0.00001D+75) then
      WRITE(6,100) D1,E1, E1 ,D2,E2,E3
      endif
  1000FORMAT(2(1H ,5X,D24.17,'  ''  ',D24.17,'  ''  ',D24.17/),5X,
     E'========' )
      RETURN
      END
      SUBROUTINE F71120
      IMPLICIT COMPLEX*16 (W)
      DOUBLE PRECISION D1,D2,D3,D4,D5,D6,D7,D8
      DOUBLE PRECISION D2300,D2600,D2700,D2800
      W1300=( 10D+1,-17.4D+10 )
      W1400=(+3.41D-1,20D+10)
      W1500=(+.024D 0,+2.000D-4 )
      W1600=(-321.D04, .234 D00 )
      W1700=(0.0D00, -321.D04)
      W1800=(-.001D42,0D-43 )
      DATA D1,D2,D3,D4,D5,D6,D7,D8 /10D+1,3.41D-1,20D+10,.24D-1,
     E2.000D-4,.234D00,0.0D00,0D-43 /
     0DATA W2300,W2400,W2500,W2600,W2700,W2800 /(10D+1,-17.4D+10),
     1 (+3.41D-1,20D+10),(+.024D 0,+2.000D-4 ),(-321.D04, .234 D00 ),
     E (0.0D00,-321.D04),(-.001D42,0D-43) /
      D2300=-17.4D+10
      if (abs(real(W1300)-real(W2300))>0.00001D+1 .or.
     +    abs(real(W1300)-D1)>0.00001D+1 .or.
     +    abs(aimag(W1300)-aimag(W2300))>0.00001D+10 .or.
     +    abs(aimag(W1300)-D2300)>0.00001D+10) then
      WRITE(6,10)W1300,W2300,D1,D2300
      endif
   100FORMAT(1H0,20X,2D24.17 /21X,2D24.17 /21X,2D24.17 /21X,
     E '==============================' )
      if (abs(real(W1400)-real(W2400))>0.00001D-1 .or.
     +    abs(real(W1400)-D2)>0.00001D-1 .or.
     +    abs(aimag(W1400)-aimag(W2400))>0.00001D+10 .or.
     +    abs(aimag(W1400)-D3)>0.00001D+10) then
      WRITE(6,10) W1400,W2400, D2 , D3
      endif
      if (abs(real(W1500)-real(W2500))>0.00001D0 .or.
     +    abs(real(W1500)-D4)>0.00001D0 .or.
     +    abs(aimag(W1500)-aimag(W2500))>0.00001D-4 .or.
     +    abs(aimag(W1500)-D5)>0.00001D-4) then
      WRITE(6,10) W1500,W2500, D4 , D5
      endif
       D2600=-321.D04
      if (abs(real(W1600)-real(W2600))>0.00001D04 .or.
     +    abs(real(W1600)-D2600)>0.00001D04 .or.
     +    abs(aimag(W1600)-aimag(W2600))>0.00001D0 .or.
     +    abs(aimag(W1600)-D6)>0.00001D0) then
      WRITE(6,10) W1600,W2600,D2600, D6
      endif
      D2700=-321.D04
      if (abs(real(W1700)-real(W2700))>0.00001D0 .or.
     +    abs(real(W1700)-D7)>0.00001D0 .or.
     +    abs(aimag(W1700)-aimag(W2700))>0.00001D04 .or.
     +    abs(aimag(W1700)-D2700)>0.00001D04) then
      WRITE(6,10) W1700,W2700, D7 ,D2700
      endif
       D2800=-.001D42
      if (abs(dble(W1800)-dble(W2800))>0.00001D42 .or.
     +    abs(dble(W1800)-D2800)>0.00001D42 .or.
     +    abs(aimag(W1800)-aimag(W2800))>0.00001D-43 .or.
     +    abs(aimag(W1800)-D8)>0.00001D-42) then
      WRITE(6,10) W1800,W2800, D2800, D8
      endif
      RETURN
      E N D
