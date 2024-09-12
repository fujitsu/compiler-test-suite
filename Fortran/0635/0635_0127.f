      program main
      integer a(30,30)
      a(:,:) = 0
      call sub(a,10,20,30)
      print *,a
      end

      subroutine sub(a,l,m,n)
      integer i,j,k,l,m,n
      integer a(n,n), b(5,n)
      b(:,:) = 0
      do k = 1, l
        do j = 1, m
          do i = 1, n
            b(1,i) = 1
            b(2,i) = 2
            b(3,i) = 3
            b(4,i) = 4
          enddo
          do i = 1, n-1
            a(1,i) = b(1,i)
            a(2,i) = b(2,i)
            a(3,i) = b(3,i)
            a(4,i) = b(4,i)
            a(5,i) = b(5,i)
          enddo
        enddo
      enddo
      end
