      real a(1000),b(1000)
      do i=1,1000
         a(i) = 1
         b(i) = i
      enddo
      call sub(a,b)
      write(6,*) a(1),b(1)
      end

      subroutine sub(a,b)
      dimension a(*),b(*)
      do i=1,1000
         a(i) = b(i)
      end do
      end
