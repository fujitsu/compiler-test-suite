      program main
      integer a(10,10,10)
      a(:,:,:) = 0
      call sub(a,10,20,10)
      print *,a
      end

      subroutine sub(a,l,m,n)
      integer i,j,k,l,m,n
      integer a(n,n,n), b(5,10,5)
      b(:,:,:) = 0
      do k = 1, l
        do j = 1, m
          do i = 1, n
            b(1,i,1) = 1
            b(2,i,1) = 2
            b(3,i,1) = 3
            b(4,i,1) = 4
            b(5,i,1) = 5
            b(1,i,2) = 6
            b(2,i,2) = 7
            b(3,i,2) = 8
            b(4,i,2) = 9
            b(5,i,2) = 10
          enddo
          do i = 1, n-1
            a(1,1,i) = b(1,i,1)
            a(2,1,i) = b(2,i,1)
            a(3,1,i) = b(3,i,1)
            a(4,2,i) = b(4,i,2)
            a(5,2,i) = b(5,i,3)
          enddo
        enddo
      enddo
      end
