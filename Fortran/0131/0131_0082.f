      integer*4  m(10), sub1
      integer*4  n(10), l(10), sub2
      integer*4  ans( 10), cal( 10), nn
      data ans  /  10, 175,  23,1516,  25,  51,  23,  36,   8,  23/
      parameter (nn=10)

      call init(m,n)
      l(1)=n(1)+n(2)*n(3)+sub1(m(1)*m(2))+mod(m(1),4)

      l(2)=n(2)*n(4)*sub1(3)+m(6)/m(4)+n(5)**2*m(6)

      l(3)=sub2(n(6))+sub1(m(1)*m(2))+m(5)*m(3)

      l(4)=n(2)+n(6)/n(3)+sub2(n(1)+n(6))*(m(2)*m(3))**n(3)

      l(5)=sub2(n(3))+n(2)*n(3)+sub1(m(4)*m(2)**2)+mod(m(2)**2,4)

      l(6)=n(4)*sub2(n(3))+m(8)/m(2)/m(4)+n(6)+m(4)**4/m(8)

      l(7)=sub2(n(6))+sub1(m(2)*m(6)/m(3))*n(2)+sub1((m(6)/m(2))**m(2))

      l(8)=n(2)+n(6)/n(3)+sub1(m(2))**(m(2)*m(3))/n(2)

      l(9)=sub2(n(4))+sub1(m(6))/int(sqrt(real(m(4)+m(5))))+sub2(n(2))

      l(10)=n(3)+sub2(n(2)+m(6)*m(3))

      do 100 i=1, 10
 100    cal(i)=l(i)

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
      subroutine init(m,n)
      integer*4  m(10)
      integer*4  n(10)
      do 10 i=1, 10
        m(i)=i
        n(i)=i
   10 continue
      end
      function sub1( n )
      integer*4  sub1, n
      sub1=n
      end
      function sub2( n )
      integer*4  sub2, n
      sub2=n
      end
