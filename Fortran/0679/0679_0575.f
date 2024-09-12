      call sub01
      call sub02
      stop
      end

      subroutine sub01
      real*4 a(12),e(12),f(12)
      real*8 b(12),c(12),d(12),g(12),h(12)
      data e/ 1.0, 2.5, 78.5,-1.0,-2.5,-78.5,
     1        1.0, 2.5, 78.5,-1.0,-2.5,-78.5/
      data f/ 3*5.0,3*-5.0,3*-5.0,3*5.0/
      data g/ 1.0d0, 2.5d0, 78.5d0,-1.0d0,-2.5d0,-78.5d0,
     1        1.0d0, 2.5d0, 78.5d0,-1.0d0,-2.5d0,-78.5d0/
      data h/ 3*5.0d0,3*-5.0d0,3*-5.0d0,3*5.0d0/
      data a/ 12*0.0/,b/12*0.0d0/,c/12*0.0d0/,d/12*0.0d0/

      do 10 i=1,12
        a(i) = mod( e(i),f(i) )
        b(i) = mod( e(i),h(i) )
        c(i) = mod( g(i),f(i) )
        d(i) = mod( g(i),h(i) )
 10   continue

      do 20 j=1,12
        write(6,200) 'a(',j,')= ',a(j)
        write(6,300) 'b(',j,')= ',b(j)
        write(6,300) 'c(',j,')= ',c(j)
        write(6,300) 'd(',j,')= ',d(j)
  20  continue
 200  format(1h ,2x,a2,i2,a2,e14.7)
 300  format(1h ,2x,a2,i2,a2,d23.16)
      return
      end

      subroutine sub02
      real*4 a(12),b(12),p(12),q(12),w,x
      real*8 c(12),d(12),e(12)
      real*8 f(12),g(12),h(12),r(12),s(12),y,z
      data p/ 1.0, 2.5, 78.0,-1.0,-2.5,-78.5,
     1        1.0, 2.5, 78.0,-1.0,-2.5,-79./
      data q/ 3*5.0,3*-5.0,3*-5.0,3*5.0/
      data r/ 1.0d0, 2.5d0, 78.5d0,-1.0d0,-2.5d0,-78.5d0,
     1        1.0d0, 2.5d0, 78.5d0,-1.0d0,-2.5d0,-78.5d0/
      data s/ 3*5.0d0,3*-5.0d0,3*-5.0d0,3*5.0d0/
      data w,x,y,z/ 78.5, 5.0,-78.5d0,-5.0d0/
      data a/ 12*0.0/,b/12*0.0/,c/12*0.0d0/,d/12*0.0d0/
      data e/ 12*0.0d0/,f/12*0.0d0/,g/12*0.0d0/,h/12*0.0d0/

      do 10 i=1,12
        a(i) = mod( w   ,q(i) )
        b(i) = mod( p(i),x    )
        c(i) = mod( w   ,s(i) )
        d(i) = mod( p(i),z    )
        e(i) = mod( y   ,q(i) )
        f(i) = mod( r(i),x    )
        g(i) = mod( y   ,s(i) )
        h(i) = mod( r(i),z    )
 10   continue
      do 20 j=1,12
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
