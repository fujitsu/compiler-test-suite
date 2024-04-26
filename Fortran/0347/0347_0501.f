      program main
      real a(500),b(500),c(500),amax/179/
      integer n/400/,j/0/,l,m
      call setd(n,a,b,c)
      l=1
      m=2
      do 10 i=1,n
        if(amax.lt.a(i)) then
          amax=a(i)
          j=i
        endif
       b(i)=a(i)+b(i)
       l=l+1
       c(m)=a(i)*b(i)
       m=m+1
   10 continue
      write(6,100) amax,j,(a(i),i=1,n),(b(i),i=1,n),(c(i),i=1,n)
  100 format(1h ,'amax--',f13.7,2x,'j--',2x,
     +        i5,2x,/,'------- other --------',/,(6(f10.4,2x)/))
      end
      subroutine setd(m,d1,d2,d3)
      integer m
      real d1(m+5),d2(m+5),d3(m+5)
      do 20 i=1,m+5
        d1(i)=-i
        d2(i)=i*2
   20   d3(i)=i*(-2.5)
      end
