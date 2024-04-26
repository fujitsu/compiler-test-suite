      program nrgl22
      f(a,b)=3.0*b/(1.0+a)
      sum=0.0
      h=0.1
      x=0.0
      y=1.0
      fk=f(x,y)
      sum=sum+x+y+fk
      p1=1.0-sqrt(0.5)
      p2=1.0+sqrt(0.5)
      q=0.0
   10 fk1=h*f(x,y)
      r1=0.5*(fk1-2.0*q)
      q=q+3.0*r1-0.5*fk1
      y=y+r1
      fk2=h*f(x+0.5*h,y)
      r2=p1*(fk2-q)
      q=q+3.0*r2-p1*fk2
      y=y+r2
      fk3=h*f(x+0.5*h,y)
      r3=p2*(fk3-q)
      q=q+3.0*r3-p2*fk3
      y=y+r3
      fk4=h*f(x+h,y)
      r4=(fk4-2.0*q)/6.0
      q=q+3.0*r4-0.5*fk4
      y=y+r4
      fk=f(x+h,y)
      x=x+h
      sum=sum+x+y+fk
      if(x-1.0)10,20,20
   20 continue
      if( abs( sum-125.12041) .le. 0.001 ) then
        write( 6,* ) ' ****** ok ***** '
      else
        write( 6,* ) ' ****** ng ***** '
      endif
      stop
      end
