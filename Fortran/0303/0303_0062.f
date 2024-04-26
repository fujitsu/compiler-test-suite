        subroutine sub1(a,b)
        real a(10),b(10)

         do i=1,10
            a(i)=i
         enddo
         call sub2 (a(5))
         do j=1,10
            b(j)=j+a(5)
         enddo
         print *,b
      end

      subroutine sub2(aa)
      real aa
        aa = aa * 2
      end

      program main
      real a(10),b(10)
      call sub1(a,b)
      print *,a
      print *,b
      end

