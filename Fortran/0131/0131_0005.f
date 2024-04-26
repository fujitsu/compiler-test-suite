
      integer*4  i, sum
      integer*4  m(100)
      character*26 str1, str2
      integer*4  ans( 12), cal( 12), nn
      data ans  / 51, 42,128, 24, 28, 24, 17, 14, 61, 12, 39, 47/
      data str1 /'abcdefghijklmnopqrstuvwxyz'/
      data str2 /'abcdefghijklmnopqrstuvwxyz'/
      parameter (nn=12)

      do 1 i=1, 100
         m(i)=i
    1 continue

      sum=0
      do 100 i=3, 30, 3
         if (m(9).lt.i) goto 100
         sum=sum+i
  100 continue
      cal(1)=sum+i

      sum=0
      do 200 i=3, 30, 3
         if (m(9).le.i) goto 200
         sum=sum+i
  200 continue
      cal(2)=sum+i

      sum=0
      do 300 i=2, 20, 2
         if (i*2.eq.m(8)) goto 300
         sum=sum+i
  300 continue
      cal(3)=sum+i

      sum=0
      do 400 i=2, 20, 2
         if (i*2.ge.m(8)) goto 400
         sum=sum+i
  400 continue
      cal(4)=sum+i

      sum=0
      do 500 i=2, 20, 2
         if (i*2.gt.m(8)) goto 500
         sum=sum+i
  500 continue
      cal(5)=sum+i

      sum=0
      do 600 i=2, 20, 2
         if (i*2.ne.4) goto 600
         sum=sum+i
  600 continue
      cal(6)=sum+i

      sum=0
      do 700 i=1, 10
         if (str1(3:6).lt.str2(i:i+3)) goto 700
         sum=sum+i
  700 continue
      cal(7)=sum+i

      sum=0
      do 800 i=1, 10
         if (str1(3:6).le.str2(i:i+3)) goto 800
         sum=sum+i
  800 continue
      cal(8)=sum+i

      sum=0
      do 900 i=1, 10
         if (str1(5:8).eq.str2(i:i+3)) goto 900
         sum=sum+i
  900 continue
      cal(9)=sum+i

      sum=0
      do 1000 i=1, 10
         if (str1(1:4).ne.str2(i:i+3)) goto 1000
         sum=sum+i
 1000 continue
      cal(10)=sum+i

      sum=0
      do 1100 i=1, 10
         if (str1(i:i+3).ge.str2(8:11)) goto 1100
         sum=sum+i
 1100 continue
      cal(11)=sum+i

      sum=0
      do 1200 i=1, 10
         if (str1(i:i+3).gt.str2(8:11)) goto 1200
         sum=sum+i
 1200 continue
      cal(12)=sum+i

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
