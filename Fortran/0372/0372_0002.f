
      integer*4  i, j, sum, sub5, sub6
      integer*8  p
      integer*4  x
      pointer(p,x)
      integer*4  m1(100)
      integer*4  ans( 10), cal( 10), nn
      data ans  / 550, 151, 112,2145,1100, 200,   0,   0,   0,   0/
      parameter (nn=6)

      do 1 i=1, 100
        m1(i)=i
    1 continue

      p=loc(j)
      sum=0
      do 100 i=1, 10
        do 100 j=1, 10
          sum=sum+x
  100 continue
      cal(1)=sum

      p=loc(i)
      sum=0
      do 200 i=1, 4
        t1=i
        do 210 j=1, 12, i
          sum=sum+j
          x=6
  210   continue
        x=t1
  200 continue
      cal(2)=sum

      k=1
      sum=0
      do 300 i=1, 4
        do 300 j=1, 10, k
          sum=sum+j
          k=j
  300 continue
      cal(3)=sum

      p=loc(j)
      sum=0
      do 400 i=1, 10
        do 400 j=i, 10
         x=3
         sum=sum+m1(j)+m1(j+10)+m1(j+20)
  400 continue
      cal(4)=sum

      p=loc(j)
      sum=0
      do 500 i=1, 10
        do 500 j=1, 10
          sum=sum+sub5(x)
  500 continue
      cal(5)=sum

      p=loc(j)
      sum=0
      do 600 i=1, 10
        do 600 j=1, 10
          sum=sum-sub6(x)
          sum=sum+m1(j)
  600 continue
      cal(6)=sum

      print *, '---  ---'
      do 10 i=1, nn
         if (cal(i).eq.ans(i)) then
            print *, '  ', i, ':   *** ok ***'
         else
            print *, '  ', i, ':   *** ng ***'
            print *, '      cal = ', cal(i)
            print *, '      ans = ', ans(i)
         endif
   10 continue
      print *, '---  ---'

      stop
      end
      function sub5( x )
      integer*4  sub5, x
      sub5=x*2
      return
      end
      function sub6( x )
      integer*4  sub6, x
      sub6=x
      x=x+2
      return
      end
