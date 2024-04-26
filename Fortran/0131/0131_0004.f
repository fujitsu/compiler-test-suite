
      integer*4  i, sum
      integer*4  m(100)
      character*26 str1, str2
      integer*4  ans( 12), cal( 12), nn
      data ans  / 42, 27, 10, 10, 18, 10, 14,  9, 20,  5, 44, 54/
      data str1 /'abcdefghijklmnopqrstuvwxyz'/
      data str2 /'abcdefghijklmnopqrstuvwxyz'/
      parameter (nn=12)

      do 1 i=1, 100
         m(i)=i
    1 continue

      sum=0
      do 100 i=3, 30, 3
         sum=sum+i
         if (m(9).lt.i) goto 110
  100 continue
  110 cal(1)=sum+i

      sum=0
      do 200 i=3, 30, 3
         sum=sum+i
         if (m(9).le.i) goto 210
  200 continue
  210 cal(2)=sum+i

      sum=0
      do 300 i=2, 20, 2
         sum=sum+i
         if (i*2.eq.m(8)) goto 310
  300 continue
  310 cal(3)=sum+i

      sum=0
      do 400 i=2, 20, 2
         sum=sum+i
         if (i*2.ge.m(8)) goto 410
  400 continue
  410 cal(4)=sum+i

      sum=0
      do 500 i=2, 20, 2
         sum=sum+i
         if (i*2.gt.m(8)) goto 510
  500 continue
  510 cal(5)=sum+i

      sum=0
      do 600 i=2, 20, 2
         sum=sum+i
         if (i*2.ne.4) goto 610
  600 continue
  610 cal(6)=sum+i

      sum=0
      do 700 i=1, 10
         sum=sum+i
         if (str1(3:6).lt.str2(i:i+3)) goto 710
  700 continue
  710 cal(7)=sum+i

      sum=0
      do 800 i=1, 10
         sum=sum+i
         if (str1(3:6).le.str2(i:i+3)) goto 810
  800 continue
  810 cal(8)=sum+i

      sum=0
      do 900 i=1, 10
         sum=sum+i
         if (str1(5:8).eq.str2(i:i+3)) goto 910
  900 continue
  910 cal(9)=sum+i

      sum=0
      do 1000 i=1, 10
         sum=sum+i
         if (str1(1:4).ne.str2(i:i+3)) goto 1010
 1000 continue
 1010 cal(10)=sum+i

      sum=0
      do 1100 i=1, 10
         sum=sum+i
         if (str1(i:i+3).ge.str2(8:11)) goto 1110
 1100 continue
 1110 cal(11)=sum+i

      sum=0
      do 1200 i=1, 10
         sum=sum+i
         if (str1(i:i+3).gt.str2(8:11)) goto 1210
 1200 continue
 1210 cal(12)=sum+i

      do 10 i=1, nn
         if (cal(i).eq.ans(i)) then
            print *, '  ', i, ':   *** ok ***'
         else
            print *, '  ', i, ':   *** ng ***'
            print *, '      cal = ', cal(i)
            print *, '      ans = ', ans(i)
         endif
   10 continue

      stop
      end
