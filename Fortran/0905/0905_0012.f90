module m
  type ty
    integer :: x    =9
    complex :: y=(6.5,8.0)
  contains
    procedure :: wform
     generic :: read(formatted) => wform
  end type
contains
    subroutine wform(ddd, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(inout) :: ddd
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
  call sub()
  contains
  pure subroutine sub()
  TYPE (ty) :: t1
  character :: ch
  integer :: aa
  ch = 'A'
  read (ch,*),t1
  end subroutine
End program
