type t
integer:: x=2
integer:: y=1
end type t
interface read(formatted)
procedure my_read_routine_formatted
end interface

 type(t)::t2(2)
  open(2,file ='fort.44',form="unformatted")
  write(2) [t(1,2),t(3,4)]
  close(2)
  open(22,file ='fort.44',form="unformatted")
  read(22) t2
  close(22,status="delete")
iF(t2(1)%x/=1) print *,'err'
iF(t2(1)%y/=2) print *,'err'
iF(t2(2)%x/=3) print *,'err'
iF(t2(2)%y/=4) print *,'err'

print *,'sngtin23:pass'

contains
subroutine my_read_routine_formatted (dtv, unit, iotype, v_list, iostat, iomsg)
class(t), intent(inout) :: dtv
integer, intent(in) :: unit ! unit number
character (len=*), intent(in) :: iotype
integer, intent(in) :: v_list(:)
integer, intent(out) :: iostat
character (len=*), intent(inout) :: iomsg

      if(size(v_list)/=0) then
        write(unit,*,iostat=iostat,iomsg=iomsg) v_list(1),v_list(2),dtv%x+2,dtv%y,iotype
      else
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+1
      end if
end subroutine my_read_routine_formatted

end
