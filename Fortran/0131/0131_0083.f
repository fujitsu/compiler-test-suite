      integer*4  i, j, m(10), subi4
      integer*4  n(10), l(10), subi8, sub7, sub8, sub9, sub10
      integer*4  ans( 10), cal( 10), nn
      data ans  /1250, 625, 334,1104,  84,  18,  10,  23,  10, 255/
      parameter (nn=10)

      call init(m,n,l)
      do 100 i=1, 10
        do 100 j=2, 10, 2
         t1=subi8(n(j))+subi4(m(3)*m(j))/subi8(n(j)/j)
         l(1)=l(1)+t1+subi4(m(i)/i)
  100 continue

      do 200 i=1, 10
        do 210 j=3, 9, 3
          l(2)=l(2)+subi8(n(j))+subi4(m(m(j)/m(3)))/subi8(n(j)/j)
  210   continue
        l(2)=l(2)+subi8(n(i))*subi4(m(i))
  200 continue

      do 300 i=2, 6, 2
        l(3)=l(3)+subi8(n(i))+n(i+1)*n(i+2)+subi4(m(4)*m(i)**2)+
     +       mod(m(i)**2,4)/n(m(i))
  300 continue

      do 400 i=2, 6, 2
      do 400 j=2, 6, 2
        l(4)=l(4)+n(j)*subi8(n(j))+m(i+4)/m(i)+n(6)+m(j)**4/subi4(m(j))
  400 continue

      do 500 i=3, 6, 3
        l(5)=n(i)*subi8(n(i))+subi4(m(i)*m(i+1))+n(m(i))
        call dummy(l(5))
  500 continue

      do 600 i=1, 3
        l(6)=subi8(n(i))+subi4(m(i+4)/m(i)*3)+n(m(i)*3)
        call dummy(l(6))
  600 continue

      l(7)=sub7(m, n)

      l(8)=sub8(m, n)

      l(9)=sub9(m, n)

      l(10)=sub10(m, n)

      do 1000 i=1, 10
1000    cal(i)=l(i)

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
      integer*4  m(10)
      integer*4  n(10), l(10)
      do 10 i=1, 10
        m(i)=i
        n(i)=i
        l(i)=0
   10 continue
      end
      function subi4( k )
      integer*4  subi4, k
      subi4=k
      end
      function subi8( k )
      integer*4  subi8, k
      subi8=k
      end
      subroutine dummy( k )
      integer*4  k
      return
      end
      function sub7(m, n)
      integer*4  m(10), subi4
      integer*4  sub7, n(10), subi8
        sub7=n(1)+n(2)*n(3)+subi4(m(1)*m(2))+mod(m(1),4)
      end
      function sub8(m, n)
      integer*4  m(10), subi4
      integer*4  sub8, n(10), subi8
      sub8=subi8(n(6))+subi4(m(2)*m(6)/m(3))*n(2)+
     +     subi4((m(6)/m(2))**m(2))
      end
      function sub9(m, n)
      integer*4  m(10), subi4
      integer*4  sub9, n(10), subi8
      sub9=0
      do 100 i=1, 10
        sub9=subi8(n(m(6)))+subi4(m(2)**m(3)/m(3))*subi8(n(2))
        call dummy(sub9)
  100 continue
      end
      function sub10(m, n)
      integer*4  m(10), subi4
      integer*4  sub10, n(10), subi8
      sub10=0
      do 100 i=1, 5
        sub10=subi8(n(m(i)))+subi4((m(i*2)*m(i)))*subi8(n(i))
        call dummy(sub10)
  100 continue
      end
