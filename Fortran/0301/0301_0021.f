      program main
      integer a(100,100)
      call sub(a,100,100)
      print *,"pass"
      end

      subroutine sub(a,n,m)
      integer a(100,100)
      do j=1,n
         do i=1,m
            a(i,j) = i+j
         enddo
      enddo
      end
