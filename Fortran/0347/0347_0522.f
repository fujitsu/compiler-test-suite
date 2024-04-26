       program main
      real aa(500),bb(500),a(500),b(500)
      integer n/500/
      logical logi(500)/500*.true./
      call setd(n,aa,bb)
      call setd(n,a,b)
      l=1
      m=500
      do 10 i=2,500
        a(i)=b(m)+i
        b(i)=i**2
        if(logi(i)) then
          aa(i)=bb(i)*2.1
          bb(i)=i
        endif
        m=m-1
   10 continue
      write(6,100)  (aa(i),i=1,n),(bb(i),i=1,n)
  100 format(1h ,/,'--------- other ----------',/,(6(f10.3,2x),/))
      end
      subroutine  setd(m,x,y)
      integer m
      real*4 x(m),y(m)
      x(1)=20
      y(1)=5
      do 20 i=2,m
        x(i)=x(i-1)+0.33339
        y(i)=100+y(i-1)
   20 continue
      end
