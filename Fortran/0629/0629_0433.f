      program main
      integer a(10,10),b(10,10)

      do i=1,10
         do j=1,10
            a(i,j) = i
         enddo
      enddo

      do i=1,10
         do j=1,10
            b(i,j) = i
         enddo
      enddo

      print *,a(10,10),b(10,10)
      end
