      program main
      real a(500),b(500),c(500),aa(500),bb(500),amax/179/,res/0/
      integer n/400/,j/0/,l,m/0/,k
      call setd(n,a,b,c)
      call setd(n,aa,bb,c )
      l=1
      m=2
      do 10 i=2,n
       b(i)=a(i)+b(i)
       l=l+1
       c(m)=a(i)*b(i)
       c(m-1)=c(m)+c(m+1)
       c(m)=b(i)*c(m-1)
       b(i)=a(i)+b(i)
       a(i)=a(i-1)+c(m)/2
       c(m)=m+l
       c(m)=b(i)*c(m-1)
       m=m+1
       a(i)=m
       b(l)=c(m)*2
        if(amax.lt.aa(i)) then
          amax=aa(i)
          res=bb(i)
          j=i
          k=i
        endif
   10 continue
      write(6,100) amax,res,j,k,(a(i),i=1,n),(b(i),i=1,n),(c(i),i=1,n),
     +          (aa(i),i=1,n),(bb(i),i=1,n)
  100 format(1h ,'amax--',f13.7,2x,'res--',f13.7,2x,'j--',i5,2x,'k--',
     +        i5,2x,/,'------- other --------',/,(6(f10.4,2x)/))
      end
      subroutine setd(m,d1,d2,d3)
      integer m
      real d1(m+5),d2(5+m),d3(m+5)
      do 20 i=1,m+5
        d1(i)=i*24.88
        d2(i)=i*2
   20   d3(i)=i*(-2.5)
      end
