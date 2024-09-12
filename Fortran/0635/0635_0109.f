      program main
      integer a(50)
      a(:) = 0
      call sub(a,10,20,50)
      print *,a
      end

      subroutine sub(a,l,m,n)
      integer i,j,k,l,m,n
      integer a(n), b(n)
      b(:) = 0
      do k = 1, l
        do j = 1, m
          do i = 1, 40
            b(i) = i
          enddo
          b(41) = 1
          do i = 1, 41
            a(i) = b(i)
          enddo
          a(1) = b(42)
        enddo
      enddo
      end
