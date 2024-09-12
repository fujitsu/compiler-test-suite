      call sub01
      call sub02
      stop
      end

      subroutine sub01
      integer*4 a(6),b(6),c(6),d(6),x,y
      data c  / 1,-1,100,-100,-2,-10/
      data d  /-1, 1,100,-100,50,-50/
      data a/6*0/,b/6*0/
      data x,y/1,-1/
      do 10 i=1,6
        a(i) = isign( x   ,d(i) )
        a(i) = isign( c(i),y    )
 10   continue

      do 20 j=1,6
        write(6,200) 'a(',j,')=',a(j)
        write(6,200) 'b(',j,')=',b(j)
  20  continue
 200  format(1h ,2x,a2,i2,a2,i5)
      return
      end

      subroutine sub02
      real*4 a(6),b(6),p(6),q(6),w,x
      real*8 c(6),d(6),e(6)
      real*8 f(6),g(6),h(6),r(6),s(6),y,z
      data p  / 1.5,-1.5,100.3,-100.3,-2.42345678901,-10.4561/
      data q  /-1.5, 1.5,100.3,-100.3,50.23456789012,-50.8901/
      data r  / 1.5d0,-1.5d0,100.3d0,-100.3d0,-2.42345678901d0,
     1         -10.4561d0/
      data s  /-1.5d0, 1.5d0,100.3d0,-100.3d0,50.23456789012d0,
     1         -50.8901d0/
      data a/6*0.0/,b/6*0.0/
      data c/6*0.0d0/,d/6*0.0d0/,e/6*0.0d0/,f/6*0.0d0/
      data g/6*0.0d0/,h/6*0.0d0/
      data w,x,y,z/ 1.5,-1.5,1.5d0,-1.5d0/

      do 10 i=1,6
        a(i) = sign( w   ,q(i) )
        b(i) = sign( p(i),x    )
        c(i) = sign( w   ,s(i) )
        d(i) = sign( p(i),z    )
        e(i) = sign( y   ,q(i) )
        f(i) = sign( r(i),x    )
        g(i) = sign( y   ,s(i) )
        h(i) = sign( r(i),z    )
 10   continue

      do 20 j=1,6
        write(6,200) 'a(',j,')=',a(j)
        write(6,200) 'b(',j,')=',b(j)
        write(6,300) 'c(',j,')=',c(j)
        write(6,300) 'd(',j,')=',d(j)
        write(6,300) 'e(',j,')=',e(j)
        write(6,300) 'f(',j,')=',f(j)
        write(6,300) 'g(',j,')=',g(j)
        write(6,300) 'h(',j,')=',h(j)
  20  continue
 200  format(1h ,2x,a2,i2,a2,e14.7)
 300  format(1h ,2x,a2,i2,a2,d23.16)
      return
      end
