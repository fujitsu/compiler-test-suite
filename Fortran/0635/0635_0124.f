      program main
      integer a(30),c
      a(:) = 0
      call sub(a,10,20,30,c)
      print *,a
      end

      subroutine sub(a,l,m,n,c)
      integer i,j,k,l,m,n,c
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
        do j = 1, m-1
          c = j
        enddo
      enddo
      end
