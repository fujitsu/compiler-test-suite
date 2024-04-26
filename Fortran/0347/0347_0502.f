      program main
      real a(500),b(500),c(500),amax/179/,dif
      integer n/400/,l,m,index
      call setd(n,a,b,c)
      l=1
      m=2
      do 10 i=2,n
       dif=a(i)-amax
       if(dif.eq.0)  then
        b(i)=a(i)
        l=l+1
        c(m)=a(i)*b(l)
       endif
       c(m)=c(m)+m
       c(m-1)=c(m)+c(m+1)
       c(m)=b(i)*c(m-1)
       b(i)=a(i)+b(i)
       c(m)=b(i)*c(m-1)
       m=m+1
       if(dif.lt.0) then
        a(i)=amax
        c(i)=c(i)+i
        index=i
       endif
   10 continue
      write(6,100) amax,l,(a(i),i=1,n),(b(i),i=1,n),(c(i),i=1,n)
  100 format(1h ,'amax--',f13.7,2x,'l--',i5,2x,
     +       /,'------- other --------',/,(6(f10.4,2x)/))
      end
      subroutine setd(m,d1,d2,d3)
      integer m
      real d1(m+5),d2(m+5),d3(m+5)
      do 20 i=1,m+5
        d1(i)=i
        d2(i)=i*2
   20   d3(i)=i*(-2.5)
      end
