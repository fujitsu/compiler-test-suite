       program main
      real a(500),b(500),c(502),aa(500),bb(500),cc(500),dd(500)
      integer n/500/,j/0/,l,m,h,g
      logical logi(500)/500*.true./
      call setd(n,a,b,c,dd)
      call setd(n,aa,bb,cc,dd)
      l=1
      g=11
      h=111
      m=2
      do 9 i=1,2
    9  c(i+500)=c(i)
      do 10 i=2,500
        a(i)=a(i-1)**2
        if(logi(i)) then
          cc(i-1)=i+h+g
          cc(i)=g
          dd(i)=h
          h=h-1
          g=g+3
        endif
       l=l+1
       c(m)=a(i)*c(i-1)
       b(i)=a(i)+m
       c(m-1)=c(m)+c(m+1)
       c(m)=b(i)*c(m-1)
       c(m)=c(m)+i
       c(m)=b(i)*c(m-1)
       b(i)=a(i)+c(i)
        if(logi(i)) then
          j=j+3
          aa(i)=j
        endif
       a(i)=a(i)+i
       a(i)=a(i-1)+c(m)/2
       c(i)=m+l
       b(l)=c(m)*2
       m=m+1
       a(i)=m
   10 continue
      write(6,100) j,h,g,(aa(i),i=1,n),(bb(i),i=1,n),
     +    (cc(i),i=1,n),(a(i),i=1,n),(b(i),i=1,n),(c(i),i=1,n)
  100 format(1h ,'j-- ',i5,2x,'h--',i5,2x,'g--',i5,2x
     +    /,'--------- other ----------',/,(6(f10.3,2x),/))
      end
      subroutine  setd(m,x,y,z,zz)
      integer m
      real*4 x(m),y(m),z(m),zz(m)
      x(1)=20
      y(1)=5
      z(1)=30
      zz(1)=30
      do 20 i=2,m
        x(i)=x(i-1)+0.33339
        y(i)=100+y(i-1)
        z(i)=-2.75*2+z(i-1)
        zz(i)=-2.75*i+zz(i-1)
   20 continue
      end
