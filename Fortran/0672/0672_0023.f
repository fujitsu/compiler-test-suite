         INTEGER *2   I02S01, I02S02, I02S03,
     *                I02S04, I02S07, I02S08,
     *                I02A01(2),I02A02(4),I02A04(8)
         INTEGER *4   I04S01, I04S02, I04S03,
     *                I04S04, I04S07, I04S08,
     *                I04A01(2),I04A02(4),I04A04(8)
         REAL    *4   R04S01, R04S02, R04S03, R04S04
         REAL    *8   R08S01, R08S02, R08S03, R08S04
         NAMELIST    /NAML01/
     *                I02S01, I02S02, I02S03,
     *                I02S04, I02S07, I02S08
         NAMELIST    /NAML02/
     *                I02S01, I02A01, I02S02,
     *                I02S03, I02A02, I02S04,
     *                I02S07, I02A04, I02S08
         NAMELIST    /NAML03/
     *                I04S01, I04S02, I04S03,
     *                I04S04, I04S07, I04S08
         NAMELIST    /NAML04/
     *                I04S01, I04A01, I04S02,
     *                I04S03, I04A02, I04S04,
     *                I04S07, I04A04, I04S08
         NAMELIST    /NAML05/
     *                R04S01, R04S02, R04S03, R04S04,
     *                R08S01, R08S02, R08S03, R08S04

         I02S02     = 1
         I02S04     = 1
         I02S06     = 1
         I02S08     = 1
         I02S10     = 1
         I02A01(1)  = 0
         I02A01(2)  = 0
         I02A02(1)  = 0
         I02A02(2)  = 0
         I02A02(3)  = 0
         I02A02(4)  = 0
         I02A04(1)  = 0
         I02A04(2)  = 0
         I02A04(3)  = 0
         I02A04(4)  = 0
         I02A04(5)  = 0
         I02A04(6)  = 0
         I02A04(7)  = 0
         I02A04(8)  = 0
         I04S02     = 1
         I04S04     = 1
         I04S06     = 1
         I04S08     = 1
         I04S10     = 1
         I04A01(1)  = 0
         I04A01(2)  = 0
         I04A02(1)  = 0
         I04A02(2)  = 0
         I04A02(3)  = 0
         I04A02(4)  = 0
         I04A04(1)  = 0
         I04A04(2)  = 0
         I04A04(3)  = 0
         I04A04(4)  = 0
         I04A04(5)  = 0
         I04A04(6)  = 0
         I04A04(7)  = 0
         I04A04(8)  = 0
         R04S02     = 2.
         R04S04     = 4.
         R08S02     = 2.
         R08S04     = 4.

         I02S01  =  2  *  I02S02
         I02S03  =  4  *  I02S04
         I02S07  =  8  *  I02S08
         WRITE (6,NAML01)

         I02S01  =  I02S02  *  2
         I02S03  =  I02S04  *  4
         I02S07  =  I02S08  *  8
         WRITE (6,NAML01)

         I02S01  =  I02A01( 2  *  I02S02 )
         I02S03  =  I02A02( 4  *  I02S04 )
         I02S07  =  I02A04( 8  *  I02S08 )
         WRITE (6,NAML02)

         I04S01  =  2  *  I04S02
         I04S03  =  4  *  I04S04
         I04S07  =  8  *  I04S08
         WRITE (6,NAML03)

         I04S01  =  I04S02  *  2
         I04S03  =  I04S04  *  4
         I04S07  =  I04S08  *  8
         WRITE (6,NAML03)

         I04S01  =  I04A01( I04S02  *  2 )
         I04S03  =  I04A02( I04S04  *  4 )
         I04S07  =  I04A04( I04S08  *  8 )
         WRITE (6,NAML04)

         R04S01  =  R04S02  /  2.0
         R04S03  =  R04S04  *  0.5

         R08S01  =  R08S02  /  2.0
         R08S03  =  R08S04  *  0.5

         WRITE (6,NAML05)

      STOP
      END
