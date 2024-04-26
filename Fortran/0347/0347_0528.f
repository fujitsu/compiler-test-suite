       program main
      real a(500),b(500),c(502),aa(500),bb(500),cc(500),amax(500)
      integer n/500/,j/0/,l,m,k,h
      logical logi(500)/500*.true./
      data a/500*1.0/
      data b/500*1.0/
      data c/502*1.0/
      data aa/500*1.0/
      data bb/500*1.0/
      data cc/500*1.0/
      data amax/500*1.0/
      call setd(n,a,b,c)
      call setd(n,aa,bb,cc)
      l=1
      m=2
      h=9
      do 9 i=1,2
    9  c(i+500)=c(i)
      do 10 i=2,500
       b(i)=a(i)+b(i)
       l=l+1
       c(m)=a(i)*b(i)
       c(m)=c(m)+l
       c(m-1)=c(m)+c(m+1)
       a(i)=a(i)+m
       c(m)=b(i)*c(m-1)
       b(i)=a(i)+b(i)
       a(i)=a(i)+c(m)/2
       c(m)=m+l
       c(m)=b(i)*c(m+1)
       b(l)=c(m)*2
        if(logi(i)) then
          aa(i)=j
          h=h+2
          cc(i)=h
          bb(i)=bb(i)+i
          k=mod(j,4)
          amax(i)=max(bb(i),aa(i))
          j=j+3
        endif
       m=m+1
       a(i)=m
   10 continue
      write(6,100) j,k,h,(amax(i),i=1,n),(aa(i),i=1,n),(bb(i),i=1,n),
     +    (cc(i),i=1,n),(a(i),i=1,n),(b(i),i=1,n),(c(i),i=1,n)
  100 format(1h ,'j--',i10,2x,'k--',i5,2x,'h--',i5,2x,
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
