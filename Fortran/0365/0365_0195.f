      module mod
        interface
          subroutine sub1(a)
          integer a(:)
          end subroutine sub1
          subroutine sub2(a)
          integer a(:)
          end subroutine sub2
        end interface
      end module mod

      use mod
      integer ::a(1000)=(/(i,i=1,1000)/)
      call sub1(a)
      end

      subroutine sub1(a)
      use mod
      common /com/ b
      integer a(:),b(1000)

      do i=1,1000
        call sub2(a)
      end do
      do i=1,1000
          if (a(i).ne.b(i))   stop 'ng'
      end do
      print *,'ok'
      end

      subroutine sub2(a)
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
