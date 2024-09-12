      subroutine sub(n)
      real*8,dimension(100) :: a,b,c
      real*8,dimension(100) :: foo1,foo2,foo3
      real*8,dimension(100) :: bar1,bar2,bar3
      common //a,b,c
      common /foo/foo1,foo2,foo3
      common /bar/bar1,bar2,bar3
      a = a*b+c
      do i=1,n
         bar1(i)=bar1(i)+bar2(i)*bar3(i)
      enddo
      do i=1,n
         foo1(i)=foo1(i)*bar2(i)*bar3(i)
      enddo
      end

      program main
      real*8,dimension(100) :: a,b,c
      real*8,dimension(100) :: foo1,foo2,foo3
      real*8,dimension(100) :: bar1,bar2,bar3
      common //a,b,c
      common /foo/foo1,foo2,foo3
      common /bar/bar1,bar2,bar3
      a = 1.0
      b = 2.0
      c = 3.0
      call sub(100)
      ng = 0
      do i=1,100
         if(a(i).ne.5)    ng = 1
         if(foo1(i).ne.6) ng = 1
         if(bar1(i).ne.7) ng = 1
      enddo
      if(ng.eq.1) then
         print*,"ng "
      else
         print*,"ok "
      endif
      end

      block data
      real*8,dimension(100) :: a,b,c
      real*8,dimension(100) :: foo1,foo2,foo3
      real*8,dimension(100) :: bar1,bar2,bar3
      common //a,b,c
      common /foo/foo1,foo2,foo3
      common /bar/bar1,bar2,bar3
      data foo1/100*1.0/
      data foo2/100*2.0/
      data foo3/100*3.0/
      data bar1/100*1.0/
      data bar2/100*2.0/
      data bar3/100*3.0/
      end
