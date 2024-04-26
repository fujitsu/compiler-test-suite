       program main
      real a(500),b(500),c(1000),aa(500),bb(500),cc(500),amax(500)
      integer n/500/,j/0/,l,m,k,h/7/
      logical logi(500)/500*.true./
      data a/500*1.0/
      data b/500*1.0/
      data c/1000*1.0/
      data aa/500*1.0/
      data bb/500*1.0/
      data cc/500*1.0/
      data amax/500*1.0/
      call setd1(n,a,b,c)
      call setd2(n,aa,bb,cc)
      l=1
      m=2
      do 10 i=2,500
       b(i)=a(i)+b(i)
       l=l+1
       c(m)=a(i)*b(i)
       c(m)=c(m)+l
       c(m-1)=c(m)+c(m+1)
       a(i)=a(i)+m
       c(m)=b(i)*c(m-1)
       b(i)=a(i)+b(i)
       a(i)=a(i-1)+c(m)/2
        if(logi(i)) then
          aa(i)=j
          h=h+2
          cc(i)=h
          m=m+1
          bb(i)=bb(i)+i
          j=j+3
          k=mod(j,4)
          amax(i)=max(m,k)
        endif
       c(m)=m+l
       c(m)=b(i)*c(m-1)
       b(l)=c(m)*2
       m=m+1
       a(i)=m
   10 continue
      write(6,100) j,k,h,m,(amax(i),i=1,n),(aa(i),i=1,n),(bb(i),i=1,n),
     +    (cc(i),i=1,n),(a(i),i=1,n),(b(i),i=1,n),(c(i),i=1,n)
  100 format(1h ,'j--',i5,2x,'k--',i5,2x,'h--',i5,2x,'m--',i5,
     +    /,'--------- other ----------',/,(6(f10.3,2x),/))
      end
      subroutine  setd1 (m,x,y,z)
      integer m
      real*4 x(m),y(m),z(m*2)
      x(1)=20
      y(1)=5
      z(1)=30
      z(501)=32.5
      do 20 i=2,m
        x(i)=x(i-1)+0.33339
        y(i)=100+y(i-1)
        z(i)=5+z(i-1)
        z(i+500)=2.5+z(i)
   20 continue
      end
      subroutine  setd2 (m,x,y,z)
      integer m
      real*4 x(m),y(m),z(m)
      x(1)=20
      y(1)=5
      z(1)=30
      do 30 i=2,m
        x(i)=x(i-1)+0.33339
        y(i)=100+y(i-1)
        z(i)=5+z(i-1)
   30 continue
      end
