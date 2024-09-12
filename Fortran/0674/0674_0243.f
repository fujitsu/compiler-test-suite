      PROGRAM MAIN
      INTEGER*4 N2/2/,N3/3/
      REAL*4  A01(10,101)/1010*1/
      REAL*4  A02(10,102)/1020*2/
      REAL*4  A03(10,103)/1030*3/
      REAL*4  A04(10,104)/1040*4/
      REAL*4  A05(10,105)/1050*5/
      REAL*4  A06(10,106)/1060*6/
      REAL*4  A07(10,107)/1070*7/
      REAL*4  A08(10,108)/1080*8/
      REAL*4  A09(10,109)/1090*9/
      REAL*4  A10(10,110)/1100*10/
      REAL*4  A11(10,111)/1110*11/
      REAL*4  A12(10,112)/1120*12/
      REAL*4  A13(10,113)/1130*13/
      REAL*4  A14(10,114)/1140*14/
      REAL*4  A15(10,115)/1150*15/
      REAL*4  A16(10,116)/1160*16/
      REAL*4  A17(10,117)/1170*17/
      REAL*4  A18(10,118)/1180*18/
      REAL*4  A19(10,119)/1190*19/
      REAL*4  A20(10,120)/1200*20/
      REAL*8  B01(10,101)/1010*1/
      REAL*8  B02(10,102)/1020*2/
      REAL*8  B03(10,103)/1030*3/
      REAL*8  B04(10,104)/1040*4/
      REAL*8  B05(10,105)/1050*5/
      REAL*8  B06(10,106)/1060*6/
      REAL*8  B07(10,107)/1070*7/
      REAL*8  B08(10,108)/1080*8/
      REAL*8  B09(10,109)/1090*9/
      REAL*8  B10(10,110)/1100*10/
      REAL*8  B11(10,111)/1110*11/
      REAL*8  B12(10,112)/1120*12/
      REAL*8  B13(10,113)/1130*13/
      REAL*8  B14(10,114)/1140*14/
      REAL*8  B15(10,115)/1150*15/
      REAL*8  B16(10,116)/1160*16/
      REAL*8  B17(10,117)/1170*17/
      REAL*8  B18(10,118)/1180*18/
      REAL*8  B19(10,119)/1190*19/
      REAL*8  B20(10,120)/1200*20/

      DO 1 J=1,2
      DO 1 I=2,9
        A01(I,J+1)=A01(I,J)+I
        A02(I,J+1)=A02(I,J)+I
        A03(I,J+1)=A03(I,J)+I
        A04(I,J+1)=A04(I,J)+I
        A05(I,J+1)=A05(I,J)+I
        A06(I,J+1)=A06(I,J)+I
        A07(I,J+1)=A07(I,J)+I
        A08(I,J+1)=A08(I,J)+I
        A09(I,J+1)=A09(I,J)+I
        A10(I,J+1)=A10(I,J)+I
        A11(I,J+1)=A11(I,J)+I
        A12(I,J+1)=A12(I,J)+I
        A13(I,J+1)=A13(I,J)+I
        A14(I,J+1)=A14(I,J)+I
        A15(I,J+1)=A15(I,J)+I
        A16(I,J+1)=A16(I,J)+I
        A17(I,J+1)=A17(I,J)+I
        A18(I,J+1)=A18(I,J)+I
        A19(I,J+1)=A19(I,J)+I
        A20(I,J+1)=A20(I,J)+I
1       CONTINUE

        S=0.
        DO 10 J=1,2
        DO 10 I=2,9
          S=S+A01(I,J)+A02(I,J)+A03(I,J)+A04(I,J)+A05(I,J)+
     1        A06(I,J)+A07(I,J)+A08(I,J)+A09(I,J)+A10(I,J)+
     2        A11(I,J)+A12(I,J)+A13(I,J)+A14(I,J)+A15(I,J)+
     3        A16(I,J)+A17(I,J)+A18(I,J)+A19(I,J)+A20(I,J)
 10     CONTINUE
       WRITE(6,*) ' CHECK1 ',S

      DO 2 J=1,3
      DO 2 I=3,8
        A01(I,J+2)=I
        A02(I,J+2)=I
        A03(I,J+2)=I
        A04(I,J+2)=I
        A05(I,J+2)=I
        A06(I,J+2)=I
        A07(I,J+2)=I
        A08(I,J+2)=I
        A09(I,J+2)=I
        A10(I,J+2)=I
        A11(I,J+2)=I
        A12(I,J+2)=I
        A13(I,J+2)=I
        A14(I,J+2)=I
        A15(I,J+2)=I
        A16(I,J+2)=I
        A17(I,J+2)=I
        A18(I,J+2)=I
        A19(I,J+2)=I
        A20(I,J+2)=I
2       CONTINUE

        S=0.
        DO 20 J=1,3
        DO 20 I=2,9
          S=S+A01(I,J)+A02(I,J)+A03(I,J)+A04(I,J)+A05(I,J)+
     1        A06(I,J)+A07(I,J)+A08(I,J)+A09(I,J)+A10(I,J)+
     2        A11(I,J)+A12(I,J)+A13(I,J)+A14(I,J)+A15(I,J)+
     3        A16(I,J)+A17(I,J)+A18(I,J)+A19(I,J)+A20(I,J)
 20     CONTINUE
       WRITE(6,*) ' CHECK2 ',S

      DO 3 J=1,N2
      DO 3 I=2,9
        B01(I,J+1)=B01(I,J)+I
        B02(I,J+1)=B02(I,J)+I
        B03(I,J+1)=B03(I,J)+I
        B04(I,J+1)=B04(I,J)+I
        B05(I,J+1)=B05(I,J)+I
        B06(I,J+1)=B06(I,J)+I
        B07(I,J+1)=B07(I,J)+I
        B08(I,J+1)=B08(I,J)+I
        B09(I,J+1)=B09(I,J)+I
        B10(I,J+1)=B10(I,J)+I
        B11(I,J+1)=B11(I,J)+I
        B12(I,J+1)=B12(I,J)+I
        B13(I,J+1)=B13(I,J)+I
        B14(I,J+1)=B14(I,J)+I
        B15(I,J+1)=B15(I,J)+I
        B16(I,J+1)=B16(I,J)+I
        B17(I,J+1)=B17(I,J)+I
        B18(I,J+1)=B18(I,J)+I
        B19(I,J+1)=B19(I,J)+I
        B20(I,J+1)=B20(I,J)+I
3       CONTINUE

        S=0.
        DO 30 J=1,N2
        DO 30 I=2,9
          S=S+B01(I,J)+B02(I,J)+B03(I,J)+B04(I,J)+B05(I,J)+
     1        B06(I,J)+B07(I,J)+B08(I,J)+B09(I,J)+B10(I,J)+
     2        B11(I,J)+B12(I,J)+B13(I,J)+B14(I,J)+B15(I,J)+
     3        B16(I,J)+B17(I,J)+B18(I,J)+B19(I,J)+B20(I,J)
 30     CONTINUE
       WRITE(6,*) ' CHECK3 ',S

      DO 4 J=1,N3
      DO 4 I=3,8
        B01(I,J+1)=B01(I,J)+I
        B02(I,J+1)=B02(I,J)+I
        B03(I,J+1)=B03(I,J)+I
        B04(I,J+1)=B04(I,J)+I
        B05(I,J+1)=B05(I,J)+I
        B06(I,J+1)=B06(I,J)+I
        B07(I,J+1)=B07(I,J)+I
        B08(I,J+1)=B08(I,J)+I
        B09(I,J+1)=B09(I,J)+I
        B10(I,J+1)=B10(I,J)+I
        B11(I,J+1)=B11(I,J)+I
        B12(I,J+1)=B12(I,J)+I
        B13(I,J+1)=B13(I,J)+I
        B14(I,J+1)=B14(I,J)+I
        B15(I,J+1)=B15(I,J)+I
        B16(I,J+1)=B16(I,J)+I
        B17(I,J+1)=B17(I,J)+I
        B18(I,J+1)=B18(I,J)+I
        B19(I,J+1)=B19(I,J)+I
        B20(I,J+1)=B20(I,J)+I
4       CONTINUE

        S=0.
        DO 40 J=1,N3
        DO 40 I=3,8
          S=S+B01(I,J)+B02(I,J)+B03(I,J)+B04(I,J)+B05(I,J)+
     1        B06(I,J)+B07(I,J)+B08(I,J)+B09(I,J)+B10(I,J)+
     2        B11(I,J)+B12(I,J)+B13(I,J)+B14(I,J)+B15(I,J)+
     3        B16(I,J)+B17(I,J)+B18(I,J)+B19(I,J)+B20(I,J)
 40     CONTINUE
       WRITE(6,*) ' CHECK4 ',S

      DO 5 J=1,2
      DO 5 I=2,9
        A01(I,J+1)=A01(I,J)
        A02(I,J+1)=A02(I,J)
        A03(I,J+1)=A03(I,J)
        A04(I,J+1)=A04(I,J)
        A05(I,J+1)=A05(I,J)
        A06(I,J+1)=A06(I,J)
        A07(I,J+1)=A07(I,J)
        A08(I,J+1)=A08(I,J)
        A09(I,J+1)=A09(I,J)
        A10(I,J+1)=A10(I,J)
        A11(I,J+1)=A11(I,J)
        A12(I,J+1)=1.
        A13(I,J+1)=I
        A14(I,J+1)=I
        A15(I,J+1)=A15(I,J)
        A16(I,J+1)=A16(I,J)
        A17(I,J+1)=I
        A18(I,J+1)=A18(I,J)
        A19(I,J+1)=I
        A20(I,J+1)=I
        B01(I,J+1)=I
        B02(I,J+1)=B02(I,J)
        B03(I,J+1)=I
        B04(I,J+1)=B04(I,J)
        B05(I,J+1)=B05(I,J)
        B06(I,J+1)=I
        B07(I,J+1)=B07(I,J)
        B08(I,J+1)=B08(I,J)
        B09(I,J+1)=B09(I,J)
        B10(I,J+1)=B10(I,J)
        B11(I,J+1)=I
        B12(I,J+1)=B12(I,J)
        B13(I,J+1)=2.
        B14(I,J+1)=B14(I,J)
        B15(I,J+1)=B15(I,J)
        B16(I,J+1)=0.
        B17(I,J+1)=B17(I,J)
        B18(I,J+1)=3.
        B19(I,J+1)=B19(I,J)
        B20(I,J+1)=4.
5       CONTINUE

        S=0.
        DO 50 J=1,2
        DO 50 I=2,9
          S=S+A01(I,J)+A02(I,J)+A03(I,J)+A04(I,J)+A05(I,J)+
     1        A06(I,J)+A07(I,J)+A08(I,J)+A09(I,J)+A10(I,J)+
     2        A11(I,J)+A12(I,J)+A13(I,J)+A14(I,J)+A15(I,J)+
     3        A16(I,J)+A17(I,J)+A18(I,J)+A19(I,J)+A20(I,J)+
     4        B01(I,J)+B02(I,J)+B03(I,J)+B04(I,J)+B05(I,J)+
     1        B06(I,J)+B07(I,J)+B08(I,J)+B09(I,J)+B10(I,J)+
     2        B11(I,J)+B12(I,J)+B13(I,J)+B14(I,J)+B15(I,J)+
     3        B16(I,J)+B17(I,J)+B18(I,J)+B19(I,J)+B20(I,J)
 50     CONTINUE
       WRITE(6,*) ' CHECK5 ',S

      DO 6 J=1,3
      DO 6 I=3,8
        B01(I,J+1)=B01(I,J)+I
        B02(I,J+1)=B02(I,J)+I
        B03(I,J+1)=B03(I,J)+I
        B04(I,J+1)=B04(I,J)+I
        B05(I,J+1)=B05(I,J)+I
        B06(I,J+1)=B06(I,J)+I
        B07(I,J+1)=B07(I,J)+I
        B08(I,J+1)=B08(I,J)+I
        B09(I,J+1)=B09(I,J)+I
        B10(I,J+1)=B10(I,J)+I
        B11(I,J+1)=B11(I,J)+I
        B12(I,J+1)=B12(I,J)+I
        B13(I,J+1)=B13(I,J)+I
        B14(I,J+1)=B14(I,J)+I
        B15(I,J+1)=B15(I,J)+I
        B16(I,J+1)=B16(I,J)+I
        B17(I,J+1)=B17(I,J)+I
        B18(I,J+1)=B18(I,J)+I
        B19(I,J+1)=B19(I,J)+I
        B20(I,J+1)=B20(I,J)+I
        A01(I,J+2)=A01(I,J)+I
        A02(I,J+2)=A02(I,J)+I
        A03(I,J+2)=A03(I,J)+I
        A04(I,J+2)=A04(I,J)+I
        A05(I,J+2)=A05(I,J)+I
        A06(I,J+2)=A06(I,J)+I
        A07(I,J+2)=A07(I,J)+I
        A08(I,J+2)=A08(I,J)+I
        A09(I,J+2)=A09(I,J)+I
        A10(I,J+2)=A10(I,J)+I
        A11(I,J+2)=A11(I,J)+I
        A12(I,J+2)=A12(I,J)+I
        A13(I,J+2)=A13(I,J)+I
        A14(I,J+2)=A14(I,J)+I
        A15(I,J+2)=A15(I,J)+I
        A16(I,J+2)=A16(I,J)+I
        A17(I,J+2)=A17(I,J)+I
        A18(I,J+2)=A18(I,J)+I
        A19(I,J+2)=A19(I,J)+I
        A20(I,J+2)=A20(I,J)+I
6       CONTINUE

        S=0.
        DO 60 J=1,3
        DO 60 I=2,9
          S=S+A01(I,J)+A02(I,J)+A03(I,J)+A04(I,J)+A05(I,J)+
     1        A06(I,J)+A07(I,J)+A08(I,J)+A09(I,J)+A10(I,J)+
     2        A11(I,J)+A12(I,J)+A13(I,J)+A14(I,J)+A15(I,J)+
     3        A16(I,J)+A17(I,J)+A18(I,J)+A19(I,J)+A20(I,J)+
     4        B01(I,J)+B02(I,J)+B03(I,J)+B04(I,J)+B05(I,J)+
     1        B06(I,J)+B07(I,J)+B08(I,J)+B09(I,J)+B10(I,J)+
     2        B11(I,J)+B12(I,J)+B13(I,J)+B14(I,J)+B15(I,J)+
     3        B16(I,J)+B17(I,J)+B18(I,J)+B19(I,J)+B20(I,J)
 60     CONTINUE
       WRITE(6,*) ' CHECK6 ',S

      DO 7 J=1,N2
      DO 7 I=2,9
        A01(I,J+2)=A01(I,J)+I
        A02(I,J+2)=A02(I,J)+I
        A03(I,J+2)=A03(I,J)+I
        A04(I,J+2)=A04(I,J)+I
        A05(I,J+2)=A05(I,J)+I
        A06(I,J+2)=A06(I,J)+I
        A07(I,J+2)=A07(I,J)+I
        A08(I,J+2)=A08(I,J)+I
        A09(I,J+2)=A09(I,J)+I
        A10(I,J+2)=A10(I,J)+I
        A11(I,J+1)=A11(I,J)+I
        A12(I,J+1)=A12(I,J)+I
        A13(I,J+1)=A13(I,J)+I
        A14(I,J+1)=A14(I,J)+I
        A15(I,J+2)=A15(I,J)+I
        A16(I,J+2)=A16(I,J)+I
        A17(I,J+2)=A17(I,J)+I
        A18(I,J+2)=A18(I,J)+I
        A19(I,J+2)=A19(I,J)+I
        A20(I,J+2)=A20(I,J)+I
        B01(I,J+1)=B01(I,J)+I
        B02(I,J+1)=B02(I,J)+I
        B03(I,J+1)=B03(I,J)+I
        B04(I,J+1)=B04(I,J)+I
        B05(I,J+1)=B05(I,J)+I
        B06(I,J+1)=B06(I,J)+I
        B07(I,J+1)=B07(I,J)+I
        B08(I,J+1)=B08(I,J)+I
        B09(I,J+1)=B09(I,J)+I
        B10(I,J+1)=B10(I,J)+I
        B11(I,J+1)=B11(I,J)+I
        B12(I,J+1)=B12(I,J)+I
        B13(I,J+1)=B13(I,J)+I
        B14(I,J+1)=B14(I,J)+I
        B15(I,J+1)=B15(I,J)+I
        B16(I,J+1)=B16(I,J)+I
        B17(I,J+1)=B17(I,J)+I
        B18(I,J+1)=B18(I,J)+I
        B19(I,J+1)=B19(I,J)+I
        B20(I,J+1)=B20(I,J)+I
7       CONTINUE

        S=0.
        DO 70 J=1,N2
        DO 70 I=2,9
          S=S+A01(I,J)+A02(I,J)+A03(I,J)+A04(I,J)+A05(I,J)+
     1        A06(I,J)+A07(I,J)+A08(I,J)+A09(I,J)+A10(I,J)+
     2        A11(I,J)+A12(I,J)+A13(I,J)+A14(I,J)+A15(I,J)+
     3        A16(I,J)+A17(I,J)+A18(I,J)+A19(I,J)+A20(I,J)+
     4        B01(I,J)+B02(I,J)+B03(I,J)+B04(I,J)+B05(I,J)+
     1        B06(I,J)+B07(I,J)+B08(I,J)+B09(I,J)+B10(I,J)+
     2        B11(I,J)+B12(I,J)+B13(I,J)+B14(I,J)+B15(I,J)+
     3        B16(I,J)+B17(I,J)+B18(I,J)+B19(I,J)+B20(I,J)
 70     CONTINUE
       WRITE(6,*) ' CHECK7 ',S

      DO 8 J=1,N3
      DO 8 I=3,8
        A01(I,J+1)=A01(I,J)+I
        A02(I,J+1)=A02(I,J)+I
        A03(I,J+1)=A03(I,J)+I
        A04(I,J+1)=A04(I,J)+I
        A05(I,J+1)=A05(I,J)+I
        A06(I,J+1)=A06(I,J)+I
        A07(I,J+1)=A07(I,J)+I
        A08(I,J+1)=A08(I,J)+I
        A09(I,J+1)=A09(I,J)+I
        A10(I,J+1)=A10(I,J)+I
        A11(I,J+1)=A11(I,J)+I
        A12(I,J+1)=A12(I,J)+I
        A13(I,J+1)=A13(I,J)+I
        A14(I,J+1)=A14(I,J)+I
        A15(I,J+1)=A15(I,J)+I
        A16(I,J+1)=A16(I,J)+I
        A17(I,J+1)=A17(I,J)+I
        A18(I,J+1)=A18(I,J)+I
        A19(I,J+1)=A19(I,J)+I
        A20(I,J+1)=A20(I,J)+I
        B01(I,J+1)=B01(I,J)+I
        B02(I,J+1)=B02(I,J)+I
        B03(I,J+1)=B03(I,J)+I
        B04(I,J+1)=B04(I,J)+I
        B05(I,J+1)=B05(I,J)+I
        B06(I,J+1)=B06(I,J)+I
        B07(I,J+1)=B07(I,J)+I
        B08(I,J+1)=B08(I,J)+I
        B09(I,J+1)=B09(I,J)+I
        B10(I,J+1)=B10(I,J)+I
        B11(I,J+1)=B11(I,J)+I
        B12(I,J+1)=B12(I,J)+I
        B13(I,J+1)=B13(I,J)+I
        B14(I,J+1)=B14(I,J)+I
        B15(I,J+1)=B15(I,J)+I
        B16(I,J+1)=B16(I,J)+I
        B17(I,J+1)=B17(I,J)+I
        B18(I,J+1)=B18(I,J)+I
        B19(I,J+1)=B19(I,J)+I
        B20(I,J+1)=B20(I,J)+I
8       CONTINUE

        S=0.
        DO 80 J=1,N3
        DO 80 I=3,8
          S=S+A01(I,J)+A02(I,J)+A03(I,J)+A04(I,J)+A05(I,J)+
     1        A06(I,J)+A07(I,J)+A08(I,J)+A09(I,J)+A10(I,J)+
     2        A11(I,J)+A12(I,J)+A13(I,J)+A14(I,J)+A15(I,J)+
     3        A16(I,J)+A17(I,J)+A18(I,J)+A19(I,J)+A20(I,J)+
     4        B01(I,J)+B02(I,J)+B03(I,J)+B04(I,J)+B05(I,J)+
     1        B06(I,J)+B07(I,J)+B08(I,J)+B09(I,J)+B10(I,J)+
     2        B11(I,J)+B12(I,J)+B13(I,J)+B14(I,J)+B15(I,J)+
     3        B16(I,J)+B17(I,J)+B18(I,J)+B19(I,J)+B20(I,J)
 80     CONTINUE
       WRITE(6,*) ' CHECK8 ',S
        STOP
        END
