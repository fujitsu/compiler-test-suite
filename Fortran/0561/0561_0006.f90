module m
  type ty
    integer :: x   
    real :: y
  contains
procedure :: wform
    procedure :: rform
     generic :: write(formatted) => wform
     generic :: read(formatted) => rform  
     end type
     character(len=15)::ch
     integer::a=1,b=1
contains
    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg

      if(size(vlist)/=0) then
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2,dtv%y,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+1
      end if
    end subroutine
subroutine rform(dtv,unit,iotype, vlist, iostat, iomsg)
    class(ty), intent(inout)            :: dtv
    integer, intent(in)             :: unit
    character(len=*), intent(in)    :: iotype
    integer, intent(in)             :: vlist (:)
    integer, intent(out)            :: iostat
    character(len=*), intent(inout) :: iomsg
     ch =iotype
      if(size(vlist)/=0) then
       read(unit,*,iostat=iostat,iomsg=iomsg)a,b, dtv%x,dtv%y,ch
       dtv%x=dtv%x+2
      else
        read(unit,*,iostat=iostat,iomsg=iomsg) dtv%x
       dtv%x=dtv%x+1
      end if
end subroutine rform 
end module
program main
  USE m
 type(ty)::t1,t2,t3,t4
 open(unit=71, file='fort.9',form='FORMATTED')
  write(unit=71,*)[ty(9,8),ty(9,8),ty(9,8),ty(9,8)]
 close(unit=71)
open(unit=77, file='fort.9',form='FORMATTED')
  read(unit=77,*)t1,t2,t3,t4
close(unit=77,status='delete')
if(t1%x .ne. 11)print*,101
if(t2%x .ne. 11)print*,102
if(t3%x .ne. 11)print*,103
if(t4%x .ne. 11)print*,104

print*,'pass'
End program
