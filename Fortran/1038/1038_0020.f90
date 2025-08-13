      program main
      integer x(10)
      save x
      call sub1(x)
print *,'pass'
      end
      subroutine sub1(x)
      integer x(*)
      x(1) = 1
      x(3) = x(2)
      write(7,*) x(3)
      end
