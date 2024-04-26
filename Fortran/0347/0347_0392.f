      real x(2200),xmax,y(2200)
      data x/2200*3.14/,y/2200*0.0/,xmax/0/,incx/1/,isamax/1300/
      x(2151)=-4.5
      call  sub(x,xmax,2200,incx,isamax,2,y)
      write(6,*) xmax,isamax
      write(6,*) y(1),y(2),y(152),y(153),y(1176),y(1177),y(2200)
      incx=2
      call  sub(x,xmax,1100,incx,isamax,2,y)
      write(6,*) xmax,isamax
      write(6,*) y(1),y(2),y(152),y(153),y(1176),y(1177),y(2200)
      stop
      end
      subroutine sub(x,xmax,n,incx,isamax,m,y)
      real x(n), xmax ,y(n)
      isamax = 1
      if ( n .le. 1 ) go to 20
         xmax = abs( x(1) )
         ix = incx + 1
         do 10 i= m,n
             if ( i            .le. xmax ) go to 11
                isamax = i
                xmax = i
 11          ix = ix + incx
 10          y(i)=i
 20   continue
      return
      end
