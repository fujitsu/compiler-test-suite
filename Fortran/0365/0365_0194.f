      module mod
        interface
          subroutine sub(a)
          integer a(:)
          end subroutine sub
        end interface
      end module mod

      use mod
      common /com/ b
      integer ::a(1000)=(/(i,i=1,1000)/),b(1000)

      do i=1,1000
        call sub(a)
      end do
      do i=1,1000
          if (a(i).ne.b(i))   stop 'ng'
      end do
      print *,'ok'
      end

      subroutine sub(a)
      use mod
      common /com/ b
      integer a(:),b(1000)
      do i=1,1000
        b(i)=a(i)
        call dummy()
      end do
      end
      subroutine dummy()
      end
