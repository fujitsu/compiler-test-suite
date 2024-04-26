      program nrgl18
      implicit real*8(a-z)
      f(x)=2.0*x**3-11.0*x**2+2.0*x+15.0
      a=2.
      b=6.
      fa=f(a)
      fb=f(b)
   10 c=(a*fb-b*fa)/(fb-fa)
      fc=f(c)
      if( abs(fc)-0.1e-06 ) 50,50,20
   20 if( fa*fc ) 30,40,40
   30 fb=fc
      b=c
      go to 10
   40 fa=fc
      a=c
      go to 10
   50 continue

      if( (5.0-c) .le. 0.1e-07 ) then
         write( 6,* ) ' ok '
      else
         write( 6,* ) ' ng '
      endif
      stop
      end
