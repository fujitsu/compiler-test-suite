      program main
      real a(10),b(10)
      integer*2 i
      integer*4 j

      do i=1,10
         a(i)=i
      enddo
      do j=1,10
         b(j)=j
      enddo

      print *,i,j
      print *,a
      print *,b
      end
