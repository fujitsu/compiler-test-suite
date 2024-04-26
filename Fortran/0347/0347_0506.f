      program main
      real a(500),b(510),c(510),aa(510),bb(510),amax/179/
      integer n/500/,l,m,k
      data a/500*1.0/
      data b/510*1.0/
      data c/510*1.0/
      data aa/510*1.0/
      data bb/510*1.0/
      call setd(n,a,b,c)
      call setd(n,aa,bb,c )
      l=0
      k=0
      m=2
      do 10 i=2,n
       b(i)=a(i)+b(i)
       l=l+1
       c(l)=a(i)*b(i)
       c(m-1)=c(m)+c(m+1)
        if(amax.lt.aa(i)) then
          amax=aa(i)
          k=i
        endif
       c(m)=b(i)*c(m-1)
       b(i)=a(i)+b(i)
       a(i)=a(i-1)+c(m)/2
       c(m)=m+l
       c(m)=b(i)*c(m-1)
       m=m+1
       a(i)=m
       b(l)=c(m)*2
   10 continue
      write(6,100) amax,k,(a(i),i=1,n),(b(i),i=1,n),(c(i),i=1,n),
     +          (aa(i),i=1,n),(bb(i),i=1,n)
  100 format(1h ,'amax--',f13.3,2x,'k--',
     +        i5,2x,/,'------- other --------',/,(6(f10.4,2x)/))
      end
      subroutine setd(m,d1,d2,d3)
      integer m
      real d1(m),d2(m),d3(m)
      do 20 i=1,m
        d1(i)=i*24.88
        d2(i)=i*2
   20   d3(i)=i*(-2.5)
      end
