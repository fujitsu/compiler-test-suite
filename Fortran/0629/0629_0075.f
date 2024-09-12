      program main
      integer a(10000,100)

      do i=1,100
         do j=1,10000
            a(j,i)=i+j
         enddo
         do j=1,10000
            call sub
         enddo
      enddo

      print *,a(1000,100)
      end

      subroutine sub
      end
