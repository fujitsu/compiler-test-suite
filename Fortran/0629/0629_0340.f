      program main
      integer a(10),b(2,10)
      j=10
      do i=1,10
         j=j+10
         a(i)=j
      enddo
      do i=1,10
         do j=1,2
            b(j,i)=j
         enddo
      enddo
      print *,a
      print *,b
      end
