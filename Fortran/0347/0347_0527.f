       program main
      real a(500),b(500),c(502),aa(500),bb(500)
      integer n/500/,j/0/,l,m
      logical logi(500)/500*.true./
      call setd(n,a,b,c)
      call setd(n,aa,bb,c)
      l=1
      m=2
      c(501)=c(1)
      c(502)=c(2)
      do 10 i=2,500
        if(logi(i)) then
          aa(i)=j
          j=j+3
          bb(i)=bb(i)+j
        endif
       b(i)=a(i)+m
       l=l+1
       c(m)=a(i)*b(i)
       c(m)=c(m)+i
       c(m-1)=c(m)+c(m+1)
       a(i)=a(i)+i
       c(m)=b(i)*c(m-1)
       b(i)=a(i)+c(i)
       a(i)=a(i-1)+c(m)/2
       c(m)=m+l
       c(m)=b(i)*c(m-1)
       b(l)=c(m)*2
       m=m+1
       a(i)=m
   10 continue
      write(6,100) j,(aa(i),i=1,n),(bb(i),i=1,n),
     +    (a(i),i=1,n),(b(i),i=1,n),(c(i),i=1,n)
  100 format(1h ,'j--',i5,
     +    /,'--------- other ----------',/,(6(f10.3,2x),/))
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
