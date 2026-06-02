type t
integer:: x=2
integer:: y=1
end type t
interface read(unformatted)
procedure my_read_routine_unformatted
end interface

 type(t)::t2(2)
  open(2,file ='fort.43',form="unformatted")
  write(2) [t(1,2),t(3,4)]
  close(2)
  open(22,file ='fort.43',form="unformatted")
  read(22) t2
  close(22,status="delete")
iF(t2(1)%x/=t2(1)%y) print *,'err'
iF(t2(2)%x/=t2(2)%y) print *,'err'

print *,'sngtin22:pass'

contains
subroutine my_read_routine_unformatted (dtv, unit, iostat, iomsg)
class(t),intent(inout) :: dtv
integer, intent(in) :: unit
integer, intent(out) :: iostat
character (len=*), intent(inout) :: iomsg
read(unit,iostat=iostat,iomsg=iomsg) dtv%x,dtv%y
dtv%x=dtv%x+1
end subroutine my_read_routine_unformatted

end
