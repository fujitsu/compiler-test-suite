      subroutine sub(i)
      integer,intent(in) :: i
      call subsub(i)
      return
      end

      subroutine subsub(i)
      integer :: i
      i=1
      return
      end
      i=2
      call sub(i)
      end

