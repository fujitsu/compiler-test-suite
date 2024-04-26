      program main
*
      sum=0.0
      a0=0.1
      a1=-0.5
      a2=0.8
      a3=1.4
*
      a=a1/a0
      b=a2/a0
      c=a3/a0
      p=b/3.0-a*a/9.0
      q=c-a*b/3.0+2.0*a**3/27.0
      qp=q*q+4.0*p**3
      if(qp)10,20,20
   20 write(6,*) '*20*'
      u3=0.5*(-q+sqrt(qp))
      v3=0.5*(-q-sqrt(qp))
      if(u3)30,40,40
   30 write(6,*) '*30*'
      if(v3)50,60,60
   40 write(6,*) '*40*'
      if(v3)70,80,80
   50 write(6,*) '*50*'
      al=0.0-(abs(u3)**(1./3.))
      be=0.0-(abs(v3)**(1./3.))
      goto 90
   60 write(6,*) '*60*'
      al=0.0-(abs(u3)**(1./3.))
      be=v3**(1./3.)
      goto 90
   70 write(6,*) '*70*'
      al=u3**(1./3.)
      be=0.0-(abs(v3)**(1./3.))
      goto 90
   80 write(6,*) '*80*'
      al=u3**(1./3.)
      be=v3**(1./3.)
   90 write(6,*) '*90*'
      x1=al+be-a/3.0
      x2=-0.5*(al+be)-a/3.0
      y2=abs(sqrt(3.0)/2.0*(al-be))
      x3=x2
      y3=y2
*
      sum=sum+x1+x2+y2+x2+y3
      goto 1100
   10 write(6,*) '*10*'
      th=atan(sqrt(-qp)/(-q))
      x1=2.0*sqrt(-p)*cos(th/3.0)-a/3.0
      x2=-2.0*sqrt(-p)*cos((3.141592654-th)/3.0)-a/3.0
      x3=-2.0*sqrt(-p)*cos((3.141592654+th)/3.0)-a/3.0
      sum=sum+x1+x2+x3
*
 1100 continue
      if(abs((9.4720078-sum)/9.4720078).lt.0.0001) then
        write( 6,* ) ' ok '
      else
        write( 6,* ) ' ng '
      endif
      stop
      end
