      program nrgl15
      dimension a(3),b(3),c(3),d(3)
      data a/+4.,+1.,-1./
      data b/-1.,+6.,-2./
      data c/+1.,+2.,+5./
      data d/+4.,+9.,+2./
*
      x0=0.0
      y0=0.0
      z0=0.0
 500  continue
        x1=(d(1)-b(1)*y0-c(1)*z0)/a(1)
        y1=(d(2)-a(2)*x1-c(2)*z0)/b(2)
        z1=(d(3)-a(3)*x1-b(3)*y1)/c(3)
        if(abs(x1-x0)-1.e-6)11,22,22
 11     if(abs(y1-y0)-1.e-6)12,22,22
 12     if(abs(z1-z0)-1.e-6)13,22,22
 22     x0=x1
        y0=y1
        z0=z1
      goto 500
 13   continue
c
      if( x1.ge. 0.99999 .and. x1 .le. 1.000001 .and.
     *    y1.ge. 0.99999 .and. y1 .le. 1.000001 .and.
     *    z1.ge. 0.99999 .and. z1 .le. 1.000001   ) then
        write( 6,* ) ' ok '
      else
        write( 6,* ) ' ng '
      endif
      stop
      end
