         program snrtpr
       external f
       external g
       external h
       real arg(10)
       real a,b(3),c(3)
       data arg/1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0/
       equivalence (a,c(1))
       real lb,ub
c
       lb=0.0
       ub=2.0
        b(1)=bisec(f,lb,ub,1.0e-6)
       lb=0.0
       ub=10.0
       b(2)=bisec(g,lb,ub,1.0e-6)
       lb=0.0
       ub=5.0
       b(3)=bisec(h, lb , ub ,1.0e-6)
       write(6,*) b(1),b(2),b(3)
c
       a=b(1)*b(2)*b(3)
c
       do 10 i=1,3
           a=a*b(i)
           c(i)=b(i)*arg(i)
  10   continue
c
       write(6,*) a
       if(a.gt.28.3 .and. a.lt.28.4) then
            write(6,*) 'ok'
       else
            write(6,*) 'ng'
       endif
       stop
       end
c
       real function bisec(func,a,b,eps)
c
       real func,a,b,eps,x1,x2,y,xm
c
       x1=a
       x2=b
       y=func(x1)
  10   continue
          xm=(x1+x2)/2
          if(y*func(xm) .gt. 0) then
               x1=xm
          else
               x2=xm
          end if
       if(abs(x2-x1) .ge. eps) goto 10
       bisec=xm
       end
c
       real function f(x)
       real x
       f=x*(x**2-x)-1
       end
c
       real function g(x)
       real x
       g=x**2-25
       end
c
       real function h(x)
       real x
       h=x**2-15
       end
