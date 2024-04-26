
      integer*4  i, j, n, sum, sub4, sub7
      integer*4  m1(100), m2(-100:-1)
      integer*4  ans( 10), cal( 10), nn
      data ans  / 121, 110,  33,  35, 605,-550,  34,   0,   0,   0/
      parameter (nn=7)

      do 1 i=1, 100
         m1(i)=i
         m2(-i)=-i
    1 continue

      sum=0
      do 100 i=2, 20, 2
         do 100 j=2, 20, 2
               sum=sum+i*j
  100 continue
      cal(1)=sum/100+mod(sum,100)

      sum=0
      do 200 i=10000, 100000, 10000
         do 210 j=10000, 100000, 10000
            sum=sum+j/1000
  210   continue
        sum=sum+i/10000
  200 continue
      cal(2)=sum/100+mod(sum,100)

      sum=0
      n=m1(3)
      do 300 i=3, 30, n
         do 300 j=3, 30, n
            sum=sum+i+j
  300 continue
      cal(3)=sum/100+mod(sum,100)

      sum=sub4( m1 )
      cal(4)=sum/100+mod(sum,100)

      sum=0
      do 500 i=1, 10
         do 510 j=1, 10
            sum=sum+m1(j)
  510    continue
         sum=sum+m1(i)
  500 continue
      cal(5)=sum

      sum=0
      do 600 i=-1, -10, -1
         do 600 j=-1, -10, -1
            sum=sum+m2(i)
  600 continue
      cal(6)=sum

      sum=sub7( m1 )
      cal(7)=sum/100+mod(sum,100)

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

      function sub4( m1 )
      integer*4  sub4, m1(100)
      integer*4  i, j
      sub4=0
      do 100 i=1, 10
         do 110 j=1, 10
            sub4=sub4+m1(i)+m1(i+10)
  110    continue
         sub4=sub4+m1(i+10)+m1(i+20)
  100 continue
      end

      function sub7( m1 )
      integer*4  sub7, m1(100)
      integer*4  i, j
      sub7=0
      do 100 i=1, 10
         do 110 j=1, 10
            sub7=sub7+m1(j)+m1(j+10)
  110    continue
         sub7=sub7+m1(i)+m1(i+20)
  100 continue
      end
