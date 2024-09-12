      program main
      i = 0
      call sub(i)
      end

      recursive subroutine sub(i)
      parameter(n=100)
      real*8,dimension(n) :: a,b,c
      if(i.ge.1) return
      a = 1
      b = 2
      c = 3
      call bar(a,b,c,n)
      i=i+1
      call sub(i)
      print*,a
      end

      subroutine bar(a,b,c,n)
      real*8,dimension(n):: a,b,c
      a=a+b*c
      end

