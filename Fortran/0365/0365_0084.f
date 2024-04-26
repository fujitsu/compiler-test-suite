      module mod
      integer:: a(1000)
       contains
       subroutine inmod()
       call insub_inmod()
       
        contains
        subroutine insub_inmod()
        do i=1,1000
          a(i)=1
        end do
        end subroutine insub_inmod
       end subroutine inmod
      end

      module mod2
      integer:: b(1000)
       contains
       subroutine inmod()
       call insub_inmod()
       
        contains
        subroutine insub_inmod()
        do i=1,1000
          b(i)=2
        end do
        end subroutine insub_inmod
       end subroutine inmod
      end

      use mod
      call inmod()
      do i=1,1000
        if (a(i).ne.1) stop 'ng'
      end do
      call sub()
      print *,'ok'
      end

      subroutine sub()
      use mod2
      call inmod()
      do i=1,1000
        if (b(i).ne.2) stop 'ng'
      end do
      end
