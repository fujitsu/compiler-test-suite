      program main
      integer a(30)
      a(:) = 0
      call sub(a,10,20,30)
      print *,a
      end

      subroutine sub(a,l,m,n)
      integer i,j,k,l,m,n
      integer a(n), b(n)
      b(:) = 0
      do k = 1, l
        do j = 1, m
          do i = 1, n
            b(i) = i
          enddo
          do i = 1, n-1
            a(i) = b(i)
          enddo
        enddo
      enddo
      end
