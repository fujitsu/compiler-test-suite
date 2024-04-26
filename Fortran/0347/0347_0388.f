      real x(2200),xmax
      data x/2200*3.14/,xmax/0/,incx/1/,isamax/1300/
      x(2151)=-4.5
      call  sub(x,xmax,2200,incx,isamax)
      write(6,*) xmax,isamax
      incx=2
      call  sub(x,xmax,1100,incx,isamax)
      write(6,*) xmax,isamax
      stop
      end
      subroutine sub(x,xmax,n,incx,isamax)
      real x(2200), xmax
      isamax = 1
      if ( n .le. 1 ) go to 20
         xmax = abs( x(1) )
         ix = incx + 1
         do 10 i= 2,n
             if ( abs( x(ix) ) .le. xmax ) go to 10
                isamax = i
                xmax = abs ( x(ix) )
 10          ix = ix + incx
 20   continue
      return
      end
