      program main
      integer a(50)
      a(:) = 0
      call sub(a,10,20,50)
      print *,a
      end

      subroutine sub(a,l,m,n)
      integer j,k,l,m,n
      integer a(n), b(n)
      b(:) = 0
      do k = 1, l
        do j = 1, m
          b(43) = 0
          b(41) = 1
          b(42) = 2
          a(1) = b(42)
          a(2) = b(43)
        enddo
      enddo
      end
