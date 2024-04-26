      integer*4  m(1500), sub1
      integer*4  n(1500), l(5,10), sub2, i
      character*10 c1, c2
      integer*4  ans( 10), cal( 10), nn
      data ans  /  14, 175,  34,1716,  25,  51,  36,   8,  23,  21/
      parameter (nn=10)
      data  c1 / '0123456789' /
      data  c2 / '1234567890' /

      call init(m,n,l)
      j=sub1(2)
      do 100 i=m(1), sub1(5), n(j+sub1(0)*j)
      k=sub1(i)
      l(i,1)=n(1)+n(2)*i+sub1(m(1)*m(2))+mod(m(1),4)
      l(i,2)=j*n(4)*sub1(3)+m(i)/m(4)+n(5)**2*m(6)
      if (c1(n(i+1):m(i+1)).ne.c2(n(k):m(k))) goto 100
      l(i,3)=m(1)*m(2)+n(k)+sub1(m(1)*m(2))+m(5)*n(k)
      l(i,4)=n(i)+n(6)/n(i)+sub2(n(i)+n(6))*(m(2)*m(3))**n(i)/(m(i)*10)
      if (c1(n(k+1):m(k+1)).ne.c2(n(k):m(k))) goto 100
      l(i,5)=sub2(n(3))+n(2)*n(3)+sub1(m(4)*m(2)**2)+mod(m(2)**2,4)
      l(i,6)=n(4)*sub2(n(3))+m(8)/m(2)/m(4)+n(6)+m(4)**4/m(8)
      if (c1(k+1:i+1).ne.c2(k:i)) goto 100
      l(i,7)=n(2)+n(6)/n(3)+sub1(m(2))**(m(2)*m(3))/n(2)
      l(i,8)=k+sub1(k/int(sqrt(real(m(4)+m(5)))))+sub2(n(2))
      if (c1(n(k+1):k+1).ne.c2(k:m(k))) goto 100
      l(i,9)=n(3)+sub2(n(2)+m(6)*m(3))
      l(i,10)=k*j+m((j/k)+3)+n(k+m(k/j+1))
 100  continue
      do 110 i=1, 10
 110    cal(i)=l(5,i)

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

      subroutine init(m,n,l)
      integer*4  m(1500),n(1500),l(5,10)
      do 10 i=1, 1500
        m(i)=i
        n(i)=i
   10 continue
      do 20 i=1, 5
        do 20 j=1, 10
         l(i,j)=0
   20 continue
      end

      function sub1( n )
      integer*4  sub1, n
      sub1=n
      end

      function sub2( n )
      integer*4  sub2, n
      sub2=n
      end
