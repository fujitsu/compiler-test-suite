      program nrgl21
*
        f(a,b)=3.0*b/(1.0+a)
        sum=0.0
        h=0.1
        x=0.0
        y=1.0
        fk=f(x,y)
        sum=sum+x+y+fk
10      continue
          fk1=h*f(x,y)
          fk2=h*f(x+h/2.0,y+fk1/2.0)
          fk3=h*f(x+h/2.0,y+fk2/2.0)
          fk4=h*f(x+h,y+fk3)
          y=y+(fk1+2.0*fk2+2.0*fk3+fk4)/6.0
          x=x+h
          fk=f(x,y)
          sum=sum+x+y+fk
        if(x-1.0)10,20,20
20      continue
        if( abs( sum-125.12085 ) .le. 0.001 ) then
          write( 6,* ) ' ok '
        else
          write( 6,* ) ' ng '
        endif
        stop
        end
