      call sub01
      call sub02
      stop
      end

      subroutine sub01
      integer*4 a(6),b(6),c(6)
      data b  / 1,-1,100,-100,-2,-10/
      data c  /-1, 1,100,-100,50,-50/
      data a/6*0/
      do 10 i=1,6
        a(i) = isign( b(i),c(i) )
 10   continue

      do 20 j=1,6
        write(6,200) 'a(',j,')= ',a(j)
  20  continue
 200  format(1h ,2x,a2,i2,a2,i5)
      return
      end

      subroutine sub02
      real*4 a(6),e(6),f(6)
      real*8 b(6),c(6),d(6),g(6),h(6)
      data e  / 1.5,-1.5,100.3,-100.3,-2.42345678901,-10.4561/
      data f  /-1.5, 1.5,100.3,-100.3,50.23456789012,-50.8901/
      data g  / 1.5d0,-1.5d0,100.3d0,-100.3d0,-2.42345678901d0,
     1         -10.4561d0/
      data h  /-1.5d0, 1.5d0,100.3d0,-100.3d0,50.23456789012d0,
     1         -50.8901d0/
      data a/6*0.0/,b/6*0.0d0/,c/6*0.0d0/,d/6*0.0d0/

      do 10 i=1,6
        a(i) = sign( e(i),f(i) )
        b(i) = sign( e(i),h(i) )
        c(i) = sign( g(i),f(i) )
        d(i) = sign( g(i),h(i) )
 10   continue

      do 20 j=1,6
        write(6,200) 'a(',j,')= ',a(j)
        write(6,300) 'b(',j,')= ',b(j)
        write(6,300) 'c(',j,')= ',c(j)
        write(6,300) 'd(',j,')= ',d(j)
  20  continue
 200  format(1h ,2x,a2,i2,a2,e14.7)
 300  format(1h ,2x,a2,i2,a2,d23.16)
      return
      end
