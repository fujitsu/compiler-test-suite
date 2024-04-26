       program main
      real aa(500),bb(500),a(500),b(500),c(503),cc(500)
      integer n/500/,j/0/,l/1/
      logical logi(500)/500*.true./
      call setd(n,aa,bb,cc)
      call setd(n,a,b,c)
      m=2
      do 9 i=1,3
    9  c(i+500)=c(i)
      do 10 i=2,500
       b(i)=a(i)+b(i)
       if(logi(i)) then
         cc(i)=l+aa(i)
         l=l+3
       endif
       c(m)=a(i)*b(i)
       c(m-1)=c(m)+c(m+1)
       a(i)=a(i)+m
       c(m)=b(i)*c(m-1)
       b(i)=a(i)+b(i)
       a(i)=a(i-1)+c(m)/2
       c(m)=b(i)*c(m-1)
       m=m+1
       a(i)=m
       if(logi(i)) then
         aa(i)=j*aa(i)
         aa(i)=j
         j=j+3
       endif
        a(i)=b(i)+a(i-1)
        b(i)=bb(i)
   10 continue
      write(6,100) l,j,(aa(i),i=1,n),(bb(i),i=1,n)
  100 format(1h ,' l-- ',i5,2x,'j-- ',i5,
     +     /,'--------- other ----------',/,(6(f10.3,2x),/))
      end
      subroutine  setd(m,x,y,z)
      integer m
      real*4 x(m),y(m),z(m)
      x(1)=20
      y(1)=5
      z(1)=1
      do 20 i=2,m
        x(i)=x(i-1)+0.33339
        y(i)=100+y(i-1)
        z(i)=log(y(i))
   20 continue
      end
