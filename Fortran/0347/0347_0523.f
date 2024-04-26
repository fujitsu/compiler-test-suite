       program main
      real a(500),b(500),c(503),aa(500),bb(500),amax(500)
      data a,b,c,aa,bb,amax/3003*0/
      integer n/500/,j/0/,l,m,k
      logical logi(500)/500*.true./
      call setd(n,a,b,c)
      call setd(n,aa,bb,c)
      do 9 i=1,3
    9  c(i+500)=c(i)
      l=1
      m=2
      do 10 i=2,500
        b(i)=max(b(i),a(i),i)
        if(logi(i)) then
          aa(i)=j
          k=mod(j,4)
          j=j+3
          bb(i)=i
          amax(i)=max(bb(i),aa(i))
        endif
       b(i)=a(i)+b(i)
       l=l+1
       c(m)=a(i)*b(i)
       c(m)=c(m)+l
       c(m-1)=c(m)+c(m+1)
       a(i)=a(i)+m
       c(m)=b(i)*c(m-1)
       b(i)=a(i)+b(i)
       a(i)=a(i-1)+c(m)/2
       c(m)=m+l
       c(m)=b(i)*c(m-1)
       b(l)=c(m)*2
       m=m+1
       a(i)=m
   10 continue
      write(6,100) j,k,(amax(i),i=1,n),(aa(i),i=1,n),(bb(i),i=1,n),
     +             (a(i),i=1,n),(b(i),i=1,n),(c(i),i=1,n)
  100 format(1h ,'j--',i10,2x,'k--',i5,2x,
     +    /,'--------- other ----------',/,(5e15.6,/))
      end
      subroutine  setd(m,x,y,z)
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
