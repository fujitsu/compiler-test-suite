module m
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
  contains
    procedure :: wform
     generic :: write(formatted) => wform
  end type
contains
    subroutine wform(ddd, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: ddd
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
      print*, "Hello"
    end subroutine
end module
program main
  USE m
  type(ty) :: obj
  call sub(obj)
  contains
  pure subroutine sub(t1)
  class(ty),intent(in) :: t1
  character :: ch
  integer :: aa
  ch = 'A'
  write (ch,*),t1
  end subroutine
End program
