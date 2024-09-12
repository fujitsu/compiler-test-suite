      program main
      integer a(10),b(10,10),c(10,10),d(10,10),e(10,10)

      do i=1,10
         a(i)=1
      enddo

      do i=1,10
         do j=1,10
            b(j,i)=2
         enddo
         do j=1,10
            c(j,i)=3
         enddo
      enddo

      do i=1,10
         do j=1,10
            d(j,i)=4
         enddo
         do j=1,10
            e(j,i)=5
         enddo
      enddo

      print *,a
      print *,b
      print *,c
      print *,d
      print *,e

      end
