      program main
      real*4 a(100),b(100),c(100),amin/25/,total/0/,subi/0/
      integer i,index/0/,n/100/,j/1/
      logical l(500)/500*.true./
      call setd(a,b,c,n)
      do 10 i=2,100
       c(i)=c(i-1)+4
       if(c(i).gt.b(i)) then
        l(i)=.true.
       else
        l(i)=.false.
       endif
       b(i)=c(i)-b(i-1)
       if(l(i)) then
         b(i)=a(i)+j
         j=j+1
         c(i)=a(i)+j
       endif
       c(i)=b(i)+c(i)
       if(a(i).gt.amin) then
         amin=a(i)
         index=i
         subi=i*12
       endif
       b(i)=a(i)+b(i)
       c(i)=c(i-1)+b(i)
       if(c(i).eq.5) then
        c(i)=c(i)+1
       endif
   10 continue
      write(6,100) amin,index,total,(b(i),i=1,n),
     +             (c(i),i=1,n)
  100 format(1h ,'amin--',f10.4,2x,'index--',i5,2x,'total--',f13.7,
     +    /,'--------- other ----------',/,
     +    (6(f20.3,2x),/))
      end
      subroutine  setd(x,y,z,m)
      integer m
      real*4 x(m),y(m),z(m)
      x(1)=20
      y(1)=5
      z(1)=30
      do 20 i=2,m
        x(i)=x(i-1)+0.33339
        y(i)=100+y(i-1)
        z(i)=-2.75*2+z(i-1)
   20 continue
      end
