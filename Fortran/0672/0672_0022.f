         NAMELIST   /NAML1/  I02S01 , I02S02 , I02S03 , I02S04 ,
     *                       I02S05 , I02S06 , I02S07
         INTEGER*2  I02S01 , I02S02 , I02S03 , I02S04 , I02S05 ,
     *              I02S06 , I02S07 , I02S11 , I02S21 , I02S31 ,
     *              I02S12 , I02S13 , I02S23 , I02S33 , I02S14 ,
     *              I02S24 , I02S15 , I02S25 , I02S16
         EQUIVALENCE       ( I02S01 , I02S11 , I02S21 , I02S31 ) ,
     *                     ( I02S02 , I02S12 ) ,
     *                     ( I02S03 , I02S13 , I02S23 , I02S33 ) ,
     *                     ( I02S04 , I02S14 , I02S24 ) ,
     *                     ( I02S05 , I02S15 , I02S25 ) ,
     *                     ( I02S06 , I02S16 )

         NAMELIST   /NAML2/  I04S01 , I04S02 , I04S03 , I04S04 ,
     *                       I04S05 , I04S06 , I04S07
         INTEGER*4  I04S01 , I04S02 , I04S03 , I04S04 , I04S05 ,
     *              I04S06 , I04S07 , I04S11 , I04S21 , I04S31 ,
     *              I04S12 , I04S13 , I04S23 , I04S33 , I04S14 ,
     *              I04S24 , I04S15 , I04S25 , I04S16
         EQUIVALENCE       ( I04S01 , I04S11 , I04S21 , I04S31 ) ,
     *                     ( I04S02 , I04S12 ) ,
     *                     ( I04S03 , I04S13 , I04S23 , I04S33 ) ,
     *                     ( I04S04 , I04S14 , I04S24 ) ,
     *                     ( I04S05 , I04S15 , I04S25 ) ,
     *                     ( I04S06 , I04S16 )

         NAMELIST   /NAML3/  R04S01 , R04S02 , R04S03 , R04S04 ,
     *                       R04S05 , R04S06 , R04S07
         REAL*4     R04S01 , R04S02 , R04S03 , R04S04 , R04S05 ,
     *              R04S06 , R04S07 , R04S11 , R04S21 , R04S31 ,
     *              R04S12 , R04S13 , R04S23 , R04S33 , R04S14 ,
     *              R04S24 , R04S15 , R04S25 , R04S16
         EQUIVALENCE       ( R04S01 , R04S11 , R04S21 , R04S31 ) ,
     *                     ( R04S02 , R04S12 ) ,
     *                     ( R04S03 , R04S13 , R04S23 , R04S33 ) ,
     *                     ( R04S04 , R04S14 , R04S24 ) ,
     *                     ( R04S05 , R04S15 , R04S25 ) ,
     *                     ( R04S06 , R04S16 )

         NAMELIST   /NAML4/  R08S01 , R08S02 , R08S03 , R08S04 ,
     *                       R08S05 , R08S06 , R08S07
         REAL*8     R08S01 , R08S02 , R08S03 , R08S04 , R08S05 ,
     *              R08S06 , R08S07 , R08S11 , R08S21 , R08S31 ,
     *              R08S12 , R08S13 , R08S23 , R08S33 , R08S14 ,
     *              R08S24 , R08S15 , R08S25 , R08S16
         EQUIVALENCE       ( R08S01 , R08S11 , R08S21 , R08S31 ) ,
     *                     ( R08S02 , R08S12 ) ,
     *                     ( R08S03 , R08S13 , R08S23 , R08S33 ) ,
     *                     ( R08S04 , R08S14 , R08S24 ) ,
     *                     ( R08S05 , R08S15 , R08S25 ) ,
     *                     ( R08S06 , R08S16 )

         NAMELIST   /NAML5/  R16S01 , R16S02 , R16S03 , R16S04 ,
     *                       R16S05 , R16S06 , R16S07
         REAL*16    R16S01 , R16S02 , R16S03 , R16S04 , R16S05 ,
     *              R16S06 , R16S07 , R16S11 , R16S21 , R16S31 ,
     *              R16S12 , R16S13 , R16S23 , R16S33 , R16S14 ,
     *              R16S24 , R16S15 , R16S25 , R16S16
         EQUIVALENCE       ( R16S01 , R16S11 , R16S21 , R16S31 ) ,
     *                     ( R16S02 , R16S12 ) ,
     *                     ( R16S03 , R16S13 , R16S23 , R16S33 ) ,
     *                     ( R16S04 , R16S14 , R16S24 ) ,
     *                     ( R16S05 , R16S15 , R16S25 ) ,
     *                     ( R16S06 , R16S16 )

         NAMELIST   /NAML6/  C08S01 , C08S02 , C08S03 , C08S04 ,
     *                       C08S05 , C08S06 , C08S07
         COMPLEX*8  C08S01 , C08S02 , C08S03 , C08S04 , C08S05 ,
     *              C08S06 , C08S07 , C08S11 , C08S21 , C08S31 ,
     *              C08S12 , C08S13 , C08S23 , C08S33 , C08S14 ,
     *              C08S24 , C08S15 , C08S25 , C08S16
         EQUIVALENCE       ( C08S01 , C08S11 , C08S21 , C08S31 ) ,
     *                     ( C08S02 , C08S12 ) ,
     *                     ( C08S03 , C08S13 , C08S23 , C08S33 ) ,
     *                     ( C08S04 , C08S14 , C08S24 ) ,
     *                     ( C08S05 , C08S15 , C08S25 ) ,
     *                     ( C08S06 , C08S16 )

         NAMELIST   /NAML7/  C16S01 , C16S02 , C16S03 , C16S04 ,
     *                       C16S05 , C16S06 , C16S07
         COMPLEX*16 C16S01 , C16S02 , C16S03 , C16S04 , C16S05 ,
     *              C16S06 , C16S07 , C16S11 , C16S21 , C16S31 ,
     *              C16S12 , C16S13 , C16S23 , C16S33 , C16S14 ,
     *              C16S24 , C16S15 , C16S25 , C16S16
         EQUIVALENCE       ( C16S01 , C16S11 , C16S21 , C16S31 ) ,
     *                     ( C16S02 , C16S12 ) ,
     *                     ( C16S03 , C16S13 , C16S23 , C16S33 ) ,
     *                     ( C16S04 , C16S14 , C16S24 ) ,
     *                     ( C16S05 , C16S15 , C16S25 ) ,
     *                     ( C16S06 , C16S16 )

         NAMELIST   /NAML8/  C32S01 , C32S02 , C32S03 , C32S04 ,
     *                       C32S05 , C32S06 , C32S07
         COMPLEX*32 C32S01 , C32S02 , C32S03 , C32S04 , C32S05 ,
     *              C32S06 , C32S07 , C32S11 , C32S21 , C32S31 ,
     *              C32S12 , C32S13 , C32S23 , C32S33 , C32S14 ,
     *              C32S24 , C32S15 , C32S25 , C32S16
         EQUIVALENCE       ( C32S01 , C32S11 , C32S21 , C32S31 ) ,
     *                     ( C32S02 , C32S12 ) ,
     *                     ( C32S03 , C32S13 , C32S23 , C32S33 ) ,
     *                     ( C32S04 , C32S14 , C32S24 ) ,
     *                     ( C32S05 , C32S15 , C32S25 ) ,
     *                     ( C32S06 , C32S16 )

         NAMELIST   /NAML9/  I02S51 , C08S52 , R04S53 , I04S54 ,
     *                       R04S55 , R08S56 , R08S57
         INTEGER*2  I02S51 , I02S61 , I02S71 , I02S81
         INTEGER*4  I04S54 , I04S64 , I04S74
         REAL*4     R04S53 , R04S63 , R04S73 , R04S83,
     *              R04S55 , R04S65 , R04S75
         REAL*8     R08S56 , R08S66 , R08S57
         COMPLEX*8  C08S52 , C08S62
         EQUIVALENCE       ( I02S51 , I02S61 , I02S71 , I02S81 ) ,
     *                     ( C08S52 , C08S62 ) ,
     *                     ( R04S53 , R04S63 , R04S73 , R04S83 ) ,
     *                     ( I04S54 , I04S64 , I04S74 ) ,
     *                     ( R04S55 , R04S65 , R04S75 ) ,
     *                     ( R08S56 , R08S66 )

         NAMELIST   /NAML10/ I04S51 , I04S52 , C08S53 , R08S54 ,
     *                       C16S55 , R04S56 , I02S57
         INTEGER*2  I02S57
         INTEGER*4  I04S51 , I04S61 , I04S71 , I04S81 ,
     *              I04S52 , I04S62
         REAL*4     R04S56 , R04S66
         REAL*8     R08S54 , R08S64 , R08S74
         COMPLEX*8  C08S53 , C08S63 , C08S73 , C08S83
         COMPLEX*16 C16S55 , C16S65 , C16S75
         EQUIVALENCE       ( I04S51 , I04S61 , I04S71 , I04S81 ) ,
     *                     ( I04S52 , I04S62 ) ,
     *                     ( C08S53 , C08S63 , C08S73 , C08S83 ) ,
     *                     ( R08S54 , R08S64 , R08S74 ) ,
     *                     ( C16S55 , C16S65 , C16S75 ) ,
     *                     ( R04S56 , R04S66 )

         NAMELIST   /NAML11/ C16S51 , R16S52 , I02S53 , C16S54 ,
     *                       I04S55 , I04S56 , R04S57
         INTEGER*2  I02S53 , I02S63 , I02S73 , I02S83
         INTEGER*4  I04S55 , I04S65 , I04S75 , I04S56 , I04S66
         REAL*4     R04S57
         REAL*16    R16S52 , R16S62
         COMPLEX*16 C16S51 , C16S61 , C16S71 , C16S81 ,
     *              C16S54 , C16S64 , C16S74
         EQUIVALENCE       ( C16S51 , C16S61 , C16S71 , C16S81 ) ,
     *                     ( R16S52 , R16S62 ) ,
     *                     ( I02S53 , I02S63 , I02S73 , I02S83 ) ,
     *                     ( C16S54 , C16S64 , C16S74 ) ,
     *                     ( I04S55 , I04S65 , I04S75 ) ,
     *                     ( I04S56 , I04S66 )

         NAMELIST   /NAML12/ R04S51 , R04S52 , R08S53 , I02S54 ,
     *                       R08S55 , C08S56 , C32S57
         INTEGER*2  I02S54 , I02S64 , I02S74
         REAL*4     R04S51 , R04S61 , R04S71 , R04S81 ,
     *              R04S52 , R04S62
         REAL*8     R08S53 , R08S63 , R08S73 , R08S83 ,
     *              R08S55 , R08S65 , R08S75
         COMPLEX*8  C08S56 , C08S66
         COMPLEX*32 C32S57
         EQUIVALENCE       ( R04S51 , R04S61 , R04S71 , R04S81 ) ,
     *                     ( R04S52 , R04S62 ) ,
     *                     ( R08S53 , R08S63 , R08S73 , R08S83 ) ,
     *                     ( I02S54 , I02S64 , I02S74 ) ,
     *                     ( R08S55 , R08S65 , R08S75 ) ,
     *                     ( C08S56 , C08S66 )

         NAMELIST   /NAML13/ R08S51 , I02S52 , C16S53 , C08S54 ,
     *                       I02S55 , C16S56 , I04S57
         INTEGER*2  I02S52 , I02S62 , I02S55 , I02S65 , I02S75
         INTEGER*4  I04S57
         REAL*8     R08S51 , R08S61 , R08S71 , R08S81
         COMPLEX*8  C08S54 , C08S64 , C08S74
         COMPLEX*16 C16S53 , C16S63 , C16S73 , C16S83 , C16S56 , C16S66
         EQUIVALENCE       ( R08S51 , R08S61 , R08S71 , R08S81 ) ,
     *                     ( I02S52 , I02S62 ) ,
     *                     ( C16S53 , C16S63 , C16S73 , C16S83 ) ,
     *                     ( C08S54 , C08S64 , C08S74 ) ,
     *                     ( I02S55 , I02S65 , I02S75 ) ,
     *                     ( C16S56 , C16S66 )

         NAMELIST   /NAML14/ C08S51 , R08S52 , I04S53 , R04S54 ,
     *                       C08S55 , I02S56 , C08S57
         INTEGER*2  I02S56 , I02S66
         INTEGER*4  I04S53 , I04S63 , I04S73 , I04S83
         REAL*4     R04S54 , R04S64 , R04S74
         REAL*8     R08S52 , R08S62
         COMPLEX*8  C08S51 , C08S61 , C08S71 , C08S81 ,
     *              C08S55 , C08S65 , C08S75 , C08S57
         EQUIVALENCE       ( C08S51 , C08S61 , C08S71 , C08S81 ) ,
     *                     ( R08S52 , R08S62 ) ,
     *                     ( I04S53 , I04S63 , I04S73 , I04S83 ) ,
     *                     ( R04S54 , R04S64 , R04S74 ) ,
     *                     ( C08S55 , C08S65 , C08S75 ) ,
     *                     ( I02S56 , I02S66 )

         I02S01 = 10
         I02S02 = I02S11 + 10
         I02S03 = 5      + I02S21
         I02S04 = I02S01 + I02S31
         I02S05 = I02S12 + I02S13
         I02S06 = I02S23 + I02S14 + I02S15
         I02S07 = (I02S33 + I02S25) + (I02S24 + I02S16)

         I04S01 = 55
         I04S02 = I04S11 + 50
         I04S03 = 50     + I04S21
         I04S04 = I04S01 + I04S31
         I04S05 = I04S12 + I04S13
         I04S06 = I04S23 + I04S14 + I04S15
         I04S07 = (I04S33 + I04S25) + (I04S24 + I04S16)

         R04S01 = 1.0
         R04S02 = R04S11 + 4.0
         R04S03 = 2.0    + R04S21
         R04S04 = R04S01 + R04S31
         R04S05 = R04S12 + R04S13
         R04S06 = R04S23 + R04S14 + R04S15
         R04S07 = (R04S33 + R04S25) + (R04S24 + R04S16)

         R08S01 = 8.0
         R08S02 = R08S11 + 2.0
         R08S03 = 3.0    + R08S21
         R08S04 = R08S01 + R08S31
         R08S05 = R08S12 + R08S13
         R08S06 = R08S23 + R08S14 + R08S15
         R08S07 = (R08S33 + R08S25) + (R08S24 + R08S16)

         R16S01 = 16.0
         R16S02 = R16S11 + 0.1
         R16S03 = 1.0    + R16S21
         R16S04 = R16S01 + R16S31
         R16S05 = R16S12 + R16S13
         R16S06 = R16S23 + R16S14 + R16S15
         R16S07 = (R16S33 + R16S25) + (R16S24 + R16S16)

         C08S01 = (1.0 , 1.0)
         C08S02 = C08S11 + (1.0 , -1.0)
         C08S03 = (3.0 , 0.0) + C08S21
         C08S04 = C08S01 + C08S31
         C08S05 = C08S12 + C08S13
         C08S06 = C08S23 + C08S14 + C08S15
         C08S07 = (C08S33 + C08S25) + (C08S24 + C08S16)

         C16S01 = (10.0 , 5.0)
         C16S02 = C16S11 + (5.0 , -1.0)
         C16S03 = (2.0 , 3.0) + C16S21
         C16S04 = C16S01 + C16S31
         C16S05 = C16S12 + C16S13
         C16S06 = C16S23 + C16S14 + C16S15
         C16S07 = (C16S33 + C16S25) + (C16S24 + C16S16)

         C32S01 = (100.0 , 50.0)
         C32S02 = C32S11 + (50.0 , -9.0)
         C32S03 = (-7.0 , 2.0) + C32S21
         C32S04 = C32S01 + C32S31
         C32S05 = C32S12 + C32S13
         C32S06 = C32S23 + C32S14 + C32S15
         C32S07 = (C32S33 + C32S25) + (C32S24 + C32S16)

         I02S51 = 1
         C08S52 = I02S61 + (5.0 , 5.0)
         R04S53 = -2.0   + I02S71
         I04S54 = I02S51 + I02S81
         R04S55 = C08S62 + R04S63
         R08S56 = R04S73 + I04S64 + R04S65
         R08S57 = (R04S83 + R04S75) + (I04S74 + R08S66)

         I04S51 = 10
         I04S52 = I04S61 + 5
         C08S53 = (5.0 , +2.0) + I04S71
         R08S54 = I04S51 + I04S81
         C16S55 = I04S62 + C08S63
         R04S56 = C08S73 + R08S64 + C16S65
         I02S57 = (C08S83 + C16S75) + (R08S74 + R04S66)

         C16S51 = (10.0 , 10.0)
         R16S52 = C16S61 + 4.0
         I02S53 = 1      + C16S71
         C16S54 = C16S51 + C16S81
         I04S55 = R16S62 + I02S63
         I04S56 = I02S73 + C16S64 + I04S65
         R04S57 = (I02S83 + I04S75) + (C16S74 + I04S66)

         R04S51 = 4.0
         R04S52 = R04S61 + (-3.0)
         R08S53 = 9.8    + R04S71
         I02S54 = R04S51 + R04S81
         R08S55 = R04S62 + R08S63
         C08S56 = R08S73 + I02S64 + R08S65
         C32S57 = (R08S83 + R08S75) + (I02S74 + C08S66)

         R08S51 = 6.0
         I02S52 = R08S61 + 9
         C16S53 = (-3.0 , -1.0) + R08S71
         C08S54 = R08S51 + R08S81
         I02S55 = I02S62 + C16S63
         C16S56 = C16S73 + C08S64 + I02S65
         I04S57 = (C16S83 + I02S75) + (C08S74 + C16S66)

         C08S51 = (-6.0 , -3.0)
         R08S52 = C08S61 + 51.0
         I04S53 = 49     + C08S71
         R04S54 = C08S51 + C08S81
         C08S55 = R08S62 + I04S63
         I02S56 = I04S73 + R04S64 + C08S65
         C08S57 = (I04S83 + C08S75) + (R04S74 + I02S66)

         WRITE(6,NAML1)
         WRITE(6,NAML2)
         WRITE(6,NAML3)
         WRITE(6,NAML4)
         WRITE(6,NAML5)
         WRITE(6,NAML6)
         WRITE(6,NAML7)
         WRITE(6,NAML8)
         WRITE(6,NAML9)
         WRITE(6,NAML10)
         WRITE(6,NAML11)
         WRITE(6,NAML12)
         WRITE(6,NAML13)
         WRITE(6,NAML14)
      STOP
      END
