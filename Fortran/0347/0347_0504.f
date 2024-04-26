      program main
      real*4 a(100),b(100),c(-1:100),amax/0/,amin/25/,total/0/
      integer i,n/100/,m/0/,l/0/
      call indata(a,b,c,n)
      do 10 i=2,100
       if(a(i).gt.amin) then
         amin=a(i)
       endif
       amax=max(a(i),b(i),c(i))
       c(m)=a(i)*b(i)
       c(m)=c(m)+l
       c(m-1)=c(m)+c(m+1)
       c(m)=b(i)*c(m-1)
       c(m)=m+l
       c(m)=b(i)*c(m-1)
       m=m+1
       total=total+a(i)
       c(i)=c(i-1)+b(i)
       if(c(i).eq.5) then
        c(i)=c(i)+1
       endif
   10 continue
      write(6,100) amin,total,(a(i),i=1,n),(b(i),i=1,n)
  100 format(1h ,'amin--',f10.4,2x,'total--',f13.7,
     +    /,'--------- other ----------',/,
     +    (6(f10.3,2x),/))
      end
      subroutine  indata(x,y,z,m)
      integer m
      real*4 x(m),y(m),z(-1:m)
      z(-1)=0
      z(0)=0
      x(1)=20
      y(1)=5
      z(1)=30
      do 20 i=2,m
        x(i)=x(i-1)+0.33339
        y(i)=100+y(i-1)
        z(i)=-2.75*2+z(i-1)
   20 continue
      end
