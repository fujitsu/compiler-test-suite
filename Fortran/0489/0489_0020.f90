module mod
    type ty
       integer :: x    =9
     contains
       procedure :: wwwww
       generic :: write(formatted) => wwwww
    end type ty
contains
  subroutine test
    TYPE (ty) :: t1
    write(1,*) t1
end
    subroutine wwwww(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer(kind=4), intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg

      write(unit,*,iostat=iostat,iomsg=iomsg) "PASS", dtv%x+1
    end subroutine wwwww
end module mod
program main
  use mod
  call test
print *,'pass'
end program main


