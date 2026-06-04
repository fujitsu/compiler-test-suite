module m
  type ty
    integer,pointer :: x
    complex :: y=(6.5,8.0)
  contains
  end type
  interface  write(formatted)
      procedure::wform
  end interface
  interface
    subroutine foo
    end subroutine
  end interface
     character(len=15)::ch
     integer::a=1,b=1
contains
    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2,dtv%y,'"',iotype,'"'
    end subroutine
end module
    subroutine foo
    end subroutine

subroutine sub1()
use m
implicit none
  class (ty),pointer :: t1
allocate(t1)
allocate(t1%x,source=9)
    open(unit=65, form='FORMATTED')
  write(unit=65,'(DT(2,3))'),t1
  end

call sub1
call chk801
print *,'sngg850n : pass'
end
subroutine chk801
integer n(3)
complex c
character*2 d
rewind 65
read(65,*) n,c,d
if (any(n/=[2,3,11]))print *,901
if (c/=(6.5,8))print *,902
if (d/='DT')print *,903
call foo
end
