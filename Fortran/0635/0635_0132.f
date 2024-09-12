      program main
      integer a(40,40)
      a(:,:) = 0
      call sub(a,10,20,40)
      print *,a
      end

      subroutine sub(a,l,m,n)
      integer i,j,k,l,m,n
      integer a(n,n), b(5,n)
      b(:,:) = 0
      do k = 1, l
        do j = 1, m
          do i = 2, 40
            b(1,i) = 1
            b(2,i) = 2
            b(3,i) = 3
            b(4,i) = 4
            b(5,i) = 5
          enddo
          do i = 1, 5
            b(i,1) = 6
          enddo
          do i = 1, 39
            a(1,i) = b(1,i)
            a(2,i) = b(2,i)
            a(3,i) = b(3,i)
            a(4,i) = b(4,i)
            a(5,i) = b(5,i)
          enddo
        enddo
      enddo
      end
