      program main
      integer a(30)
      a(:) = 0
      call sub(a,10,20,30)
      print *,a
      end

      subroutine sub(a,l,m,n)
      integer i,j,k,l,m,n
      integer a(n), b(0:n)
      b(:) = 0
      do k = 1, l
        do j = 1, m
          b(0) = 0
          do i = 1, n-1
            b(i) = i
          enddo
          b(n) = 0
          a(1) = b(1)
        enddo
      enddo
      end
