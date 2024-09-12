      subroutine sub(n)
      real*8,dimension(n) :: a,b,c
      integer*4,dimension(n) :: e,f,g
      a=1
      b=2
      c=3
      e=4
      f=5
      g=6
      call poo(a,b,c,e,f,g,n)
      end

      subroutine poo(a,b,c,e,f,g,n)
      real*8,dimension(n) :: a,b,c
      integer*4,dimension(n) :: e,f,g
      print*,a
      print*,b
      print*,c
      print*,e
      print*,f
      print*,g
      end

      program main
      n = 10
      call sub(n)
      end
