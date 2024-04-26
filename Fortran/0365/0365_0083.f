      integer:: a(1000)
      call insub()
      do i=1,1000
        if (a(i).ne.1) stop 'ng'
      end do
      print *,'ok'

      contains
        subroutine insub()
        do i=1,1000
          a(i)=1
        end do
        end subroutine insub
      end
