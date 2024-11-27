module m
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
  contains
    procedure :: wform
     generic :: write(formatted) => wform
  end type
      integer::ss
contains
    subroutine wform(ddd, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: ddd
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
         ss=1000
    end subroutine
end module
program main
  USE m
  call sub()
    print*,ss
  contains
pure   subroutine sub()
  TYPE (ty) :: t1
  character :: ch
  integer :: aa
  ch = 'A'
  write (ch,*)fun()
  end subroutine
pure function  fun()
type(ty)::fun
end function
End program
