      call sub01
      call sub02
      call sub03
      call sub04
      call sub05
      call sub06
      stop
      end

      subroutine sub01
      integer*4 a(6),b(6),c(6)
      data b  / 100, 10, 23,-100,-10,-23 /
      data c  /  50,100, 23,-100,-50,  3 /
      data a/6*0/

      do 10 i=1,6
        a(i) = idim( b(i),c(i) )
 10   continue

      do 20 j=1,6
        write(6,200) 'a(',j,')= ',a(j)
  20  continue
 200  format(1h ,2x,a2,i2,a2,i5)
      return
      end

      subroutine sub02
      integer*4 a(6),b(6),c(6),d(6),x,y
      data c  / 100, 10, 23,-100,-10,-23 /
      data d  /  50,100, 23,-100,-50,  3 /
      data a/6*0/,b/6*0/
      data x,y/ 10, 5 /

      do 10 i=1,6
        a(i) = idim( x   ,d(i) )
        b(i) = idim( c(i),y    )
 10   continue
      do 20 j=1,6
        write(6,200) 'a(',j,')= ',a(j)
        write(6,200) 'b(',j,')= ',b(j)
  20  continue
 200  format(1h ,2x,a2,i2,a2,i5)
      return
      end

      subroutine sub03
      real*4 a(6),e(6),f(6)
      real*8 b(6),c(6),d(6),g(6),h(6)
      data e  / 100.5, 10.3, 23.2,-100.65,-10.23456,-23.45678901234 /
      data f  /  50.4,100.2, 23.2,-100.65,-50.456,  3.2345678901564 /
      data g  / 100.5d0, 10.3d0, 23.2d0,-100.65d0,
     1         -10.23456d0,-23.45678901234d0 /
      data h  /  50.4d0,100.2d0, 23.2d0,-100.65d0,
     1         -50.456d0,  3.2345678901564d0 /
      data a/6*0.0/,b/6*0.0d0/,c/6*0.0d0/,d/6*0.0d0/

      do 10 i=1,6
        a(i) = dim( e(i),f(i) )
        b(i) = dim( e(i),h(i) )
        c(i) = dim( g(i),f(i) )
        d(i) = dim( g(i),h(i) )
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

      subroutine sub04
      real*4 a(6),b(6),p(6),q(6),w,x
      real*8 c(6),d(6),e(6)
      real*8 f(6),g(6),h(6),r(6),s(6),y,z
      data w,x,y,z /50.0,50.0,-1.d0,-1.d0/
      data p  / 100.5, 10.3, 23.2,-100.65,-10.23456,-23.45678901234 /
      data q  /  50.4,100.2, 23.2,-100.65,-50.456,  3.2345678901564 /
      data r  / 100.5d0, 10.3d0, 23.2d0,-100.65d0,
     1         -10.23456d0,-23.45678901234d0 /
      data s  /  50.4d0,100.2d0, 23.2d0,-100.65d0,
     1         -50.456d0,  3.2345678901564d0 /
      data a/6*0.0/,b/6*0.0/
      data c/6*0.0d0/,d/6*0.0d0/,e/6*0.0d0/,f/6*0.0d0/
      data g/6*0.0d0/,h/6*0.0d0/

      do 10 i=1,6
        a(i) = dim( w   ,q(i) )
        b(i) = dim( p(i),x    )
        c(i) = dim( w   ,s(i) )
        d(i) = dim( p(i),z    )
        e(i) = dim( y   ,q(i) )
        f(i) = dim( r(i),x    )
        g(i) = dim( y   ,s(i) )
        h(i) = dim( r(i),z    )
 10   continue
      do 20 j=1,6
        write(6,200) 'a(',j,')= ',a(j)
        write(6,200) 'b(',j,')= ',b(j)
        write(6,300) 'c(',j,')= ',c(j)
        write(6,300) 'd(',j,')= ',d(j)
        write(6,300) 'e(',j,')= ',e(j)
        write(6,300) 'f(',j,')= ',f(j)
        write(6,300) 'g(',j,')= ',g(j)
        write(6,300) 'h(',j,')= ',h(j)
  20  continue
 200  format(1h ,2x,a2,i2,a2,e14.7)
 300  format(1h ,2x,a2,i2,a2,d23.16)
      return
      end

      subroutine sub05
      real*4 b(6),c(6)
      real*8 a(6)
      data b  / 55.23, 34.5678, 67.89101134 ,-55.23,-34.5678,
     1         -67.89101134/
      data c  / 23.24, 67.2316, 90.23456790 ,-23.11, 23.1, 0.0001234/
      data a/6*0.0d0/

      do 10 i=1,6
        a(i) = dprod( b(i),c(i) )
 10   continue
      do 20 j=1,6
        write(6,200) 'a(',j,')= ',a(j)
  20  continue
 200  format(1h ,2x,a2,i2,a2,d23.16)
      return
      end

      subroutine sub06
      real*4 c(6),d(6),x,y
      real*8 a(6),b(6)
      data c  / 55.23, 34.5678, 67.89101134 ,-55.23,-34.5678,
     1         -67.89101134/
      data d  / 23.24, 67.2316, 90.23456790 ,-23.11, 23.1, 0.0001234/
      data a/6*0.0d0/,b/6*0.0d0/
      data x,y/55.23,23.24/
      do 10 i=1,6
        a(i) = dprod( x   ,d(i) )
        b(i) = dprod( c(i),y    )
 10   continue
      do 20 j=1,6
        write(6,200) 'a(',j,')= ',a(j)
        write(6,200) 'b(',j,')= ',b(j)
  20  continue
 200  format(1h ,2x,a2,i2,a2,d23.16)
      return
      end
