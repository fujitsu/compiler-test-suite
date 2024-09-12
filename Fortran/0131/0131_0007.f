
      integer*4  i, j, sum, rand
      character  str0*120, str1*120, str2(7)*120, ch*1
      real*4     Pi
      integer*4  ans( 10), cal( 10), nn
      data ans  /   1, 555,   0,   0,   0,   0,   0,   0,   0,   0/
      parameter (nn=2)

      do 1 i=1, 120
        str0(i:i)='0'
        str1(i:i)='1'
    1 continue

      j=0
      sum=0
      call srand( 1 )
      do 100 i=1, 1000000
        if ((rand()**2+rand()**2).le.50**2) j=j+1
  100 continue
      Pi=(10000.0*real(j))/(2500.0*1000000.0)
      if (abs(Pi-3.0937510).le.0.000001) then
         sum=1
      else
         sum=0
      endif
      cal(1)=sum

      sum=0
      k=1
      do 200 i=1, 7
        str2(i)=str0
        do 210 j=1, 50, k
          str2(i)(j:j+k/2-1)=str1(1:k/2)
  210   continue
        k=k*2
  200 continue
      sum=0
      do 220 i=1, 7
        do 220 j=1, 100
          n=mod(j,2**(i-1))
          if (n.eq.0.or.n.gt.2**(i-1)/2) then
             ch='0'
          else
             ch='1'
          endif
          if (str2(i)(j:j).eq.ch) sum=sum+1
  220 continue
      cal(2)=sum

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
      subroutine srand( seed )
      integer*4  seed, rr
      common  /ran/ rr
      rr = seed
      end

      function rand()
      integer*4  rand, rr
      common  /ran/ rr
      rr = mod(rr*29+123, 1024)
      rand = rr*101/1024-50
      end
