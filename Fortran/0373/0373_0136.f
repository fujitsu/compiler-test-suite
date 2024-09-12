      program main
      parameter(n=100)
      call sub(n)
      end

      subroutine sub(n)
      real*8,dimension(n) :: a,b,c
      a = 1
      b = 2
      c = 3
      call bar(a,b,c,n)
      print*,a
      end

      subroutine bar(a,b,c,n)
      real*8,dimension(n):: a,b,c
      a=a+b*c
      end

