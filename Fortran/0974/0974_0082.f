      subroutine sub(a,b,c)
      real a(10),b(10),c(10)

      do m=1,10
         do i=1,10
            a(i)=i
         enddo
         do j=2,10
            b(j)=b(j-1)
         enddo
         do k=1,10
            c(k)=k
         enddo
      enddo

      end

      program main
      real a(10),b(10),c(10)
      data b/1,2,3,4,5,6,7,8,9,10/
      call sub(a,b,c)
      print *,a
      print *,b
      print *,c
      end
