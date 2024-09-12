      program main
      integer a(10,10)

      do i=1,10
         do j=1,10
            a(i,j) = i
         enddo
      enddo

      print *,a(10,10)
      end
