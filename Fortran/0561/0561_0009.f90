module m
  type ty
    integer :: x  
    real :: y
  contains
    procedure :: wform
     generic :: write(formatted) => wform
  end type
  integer::a
contains
    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
      a=dtv%x
      if(size(vlist)/=0) then
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+1,dtv%y,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+2,dtv%y,iotype
      end if
    end subroutine
end module

program main
  USE m
  interface
  function t1()
  import ty
  type(ty) :: t1
  end function
  end interface

  call ss(t1)

contains
  subroutine ss(dd)
  interface
  function dd()
  import ty
  type(ty) :: dd
  end function
  end interface
open(unit=71, file='fort.12',form='FORMATTED')
  write(unit=71,'(DT(2,3))')dd()
  close(unit=71,status='delete')
 if(a .ne. 19)print*,101
 print*,'pass'
end subroutine
End program

  function t1()
  use m
  type(ty) :: t1
  t1%x=19
  t1%y=18
  end function
