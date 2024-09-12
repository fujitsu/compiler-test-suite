      program main
      integer*4  i4a1(10), i4b1(10), i4c1(10), si4a1(10)
      real*4     r4a1(10), r4b1(10), r4c1(10), sr4a1(10)
      real*8     r8a1(10), r8b1(10), r8c1(10), sr8a1(10)
      data i4b1 / 1,   2,    3,   4,   5,   6,   7,   8,   9,  10   /
      data i4c1 / 2,   4,    6,   8,  10,  12,  14,  16,  18,  20   /
      data r4b1 / 0.0, 0.01, 1.0, 2.0, 0.1, 1.0, 2.0, 1.0, 1.0, 2.0 /
      data r4c1 / 0.0, 0.02, 2.0, 4.0, 0.2, 2.0, 4.0, 2.0, 2.0, 4.0 /
      data r8b1 / 0.0, 0.011,1.01,2.01,0.11,1.01,2.01,1.01,1.01,2.01/
      data r8c1 / 0.0, 0.022,2.02,4.02,0.22,2.02,4.02,4.02,2.02,4.02/
      i4a1(1) = 2
      r4a1(1) = 10.0
      r8a1(1) = 10.0
      do 10 i=2,10
          i4a1(i) = i4a1(i-1) * i4b1(i) + i4c1(i)
          r4a1(i) = r4a1(i-1) * r4b1(i) + r4c1(i)
          r8a1(i) = r8a1(i-1) * r8b1(i) + r8c1(i)
   10 continue
      si4a1(1) = 2
      sr4a1(1) = 10.0
      sr8a1(1) = 10.0
      i=2
   20 si4a1(i) = si4a1(i-1) * i4b1(i) + i4c1(i)
      sr4a1(i) = sr4a1(i-1) * r4b1(i) + r4c1(i)
      sr8a1(i) = sr8a1(i-1) * r8b1(i) + r8c1(i)
      i=i+1
      if( i.le.10 ) goto 20
      i=1
   30 if( i4a1(i).ne.si4a1(i) ) write(6,100)
      if( r4a1(i).ne.sr4a1(i) ) write(6,110)
      if( r8a1(i).ne.sr8a1(i) ) write(6,120)
      i=i+1
      if( i.le.10 ) goto 30
      write(6,9999)
      stop
  100 format(1h ,'**** ng **** i4 vrc')
  110 format(1h ,'**** ng **** r4 vrc')
  120 format(1h ,'**** ng **** r8 vrc')
 9999 format(1h ,'>>>> ok <<<<')
      end
