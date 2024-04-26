      program nrgl20
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
   20 u3=0.5*(-q+sqrt(qp))
      v3=0.5*(-q-sqrt(qp))
      if(u3)30,40,40
   30 if(v3)50,60,60
   40 if(v3)70,80,80
   50 al=0.0-(abs(u3)**(1./3.))
      be=0.0-(abs(v3)**(1./3.))
      goto 90
   60 al=0.0-(abs(u3)**(1./3.))
      be=v3**(1./3.)
      goto 90
   70 al=u3**(1./3.)
      be=0.0-(abs(v3)**(1./3.))
      goto 90
   80 al=u3**(1./3.)
      be=v3**(1./3.)
   90 x1=al+be-a/3.0
      x2=-0.5*(al+be)-a/3.0
      y2=abs(sqrt(3.0)/2.0*(al-be))
      x3=x2
      y3=y2
      sum=sum+x1+x2+y2+x2+y3
      goto 1100
   10 th=atan(sqrt(-qp)/(-q))
      x1=2.0*sqrt(-p)*cos(th/3.0)-a/3.0
      x2=-2.0*sqrt(-p)*cos((3.141592654-th)/3.0)-a/3.0
      x3=-2.0*sqrt(-p)*cos((3.141592654+th)/3.0)-a/3.0
      sum=sum+x1+x2+x3
 1100 continue
      if( abs( sum-9.4696312) .le. 0.01 ) then
        write( 6,* ) ' ok1'
      else
        write( 6,* ) ' ng1'
      endif
      call sub()
      stop
      end
      subroutine sub()
      integer n/4/
      dimension a(4,5)
      data a/2,-1,4,5, 3,2,1,-4, 1,2,-3,-4, -3,4,5,1, 1,6,3,3/
*
      m=n+1
      do 40 k=1,n
        p=a(k,k)
        do 10 j=k,m
          a(k,j)=a(k,j)/p
 10     continue
        do 20 i=1,n
          if( i-k )21,20,21
 21       aik=a(i,k)
          do 30 j=k,m
            a(i,j)=a(i,j)-aik*a(k,j)
 30       continue
 20     continue
 40   continue
      if( abs( a(1,m)-2. )   .le. 0.00001  .and.
     +    abs( a(2,m)-(-1) ) .le. 0.00001 .and.
     +    abs( a(3,m)-3. )   .le. 0.00001  .and.
     +    abs( a(4,m)-1. )   .le. 0.00001       ) then
        write( 6,* ) ' ok2'
      else
        write( 6,* ) ' ng2'
      endif
      stop
      end
