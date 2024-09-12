      PROGRAM MAIN
       REAL*4 RC(10)
       REAL*8 DD(10,10,10)

       DATA RC/10*1.0/ 
       DATA DD/1000*1.0/ 

       RMIN = 0.
       IF (RMIN - RC(2)) 30, 30, 32
   32  RMIN = RC(2)
   30  CONTINUE
       IF (RMIN - RC(3)) 2, 2, 1
    1  RMIN = RC(3)
    2  CONTINUE
       IF (RMIN - RC(4)) 4, 4, 3
    3  RMIN = RC(4)
    4  CONTINUE
       IF (RMIN - RC(5)) 6, 6, 5
    5  RMIN = RC(5)
    6  CONTINUE
       IF (RMIN - RC(6)) 8, 8, 7
    7  RMIN = RC(6)
    8  CONTINUE
       IF (RMIN - RC(7)) 10, 10, 9
    9  RMIN = RC(7)
   10  CONTINUE
       IF (RMIN - RC(8)) 12, 12, 11
   11  RMIN = RC(8)
   12  CONTINUE
       WRITE (6, *) 'RMIN=', RMIN

       RMIN = 0.
       RMX = 0.
       RMX = MAX (REAL (RMX, KIND = 8), DD(3,8,8))
       RMX = MAX (REAL (RMX, KIND = 8), DD(3,8,7))
       RMX = MAX (REAL (RMX, KIND = 8), DD(3,8,6))
       RMX = MAX (REAL (RMX, KIND = 8), DD(3,8,5))
       RMX = MAX (REAL (RMX, KIND = 8), DD(3,8,4))
       RMX = MAX (REAL (RMX, KIND = 8), DD(3,8,3))
       RMX = MAX (REAL (RMX, KIND = 8), DD(3,8,2))
       IF (RMIN - RC(2)) 26, 26, 25
   25  RMIN = RC(2)
   26  IF (RMIN - RC(3)) 14, 14, 13
   13  RMIN = RC(3)
   14  IF (RMIN - RC(4)) 16, 16, 15
   15  RMIN = RC(4)
   16  IF (RMIN - RC(5)) 18, 18, 17
   17  RMIN = RC(5)
   18  IF (RMIN - RC(6)) 20, 20, 19
   19  RMIN = RC(6)
   20  IF (RMIN - RC(7)) 22, 22, 21
   21  RMIN = RC(7)
   22  IF (RMIN - RC(8)) 24, 24, 23
   23  RMIN = RC(8)
 24    WRITE (6, *) 'RMIN=', RMIN
       WRITE (6, *) 'RMX=', RMX
       STOP 
      END
