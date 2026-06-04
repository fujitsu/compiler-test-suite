type t
integer:: x=2
integer:: y=1
end type t
interface write(unformatted)
procedure my_write_routine_unformatted
end interface

 type(t)::t2(2)
  OPEN(2,file ='fort.63',form="unformatted")
  WRITE(2) [t(1,2),t(3,4)]
  close(2)
  OPEN(22,file ='fort.63',form="unformatted")
  READ(22) t2
  close(22,status="delete")
iF(t2(1)%x/=2) print *,'err'
iF(t2(1)%y/=4) print *,'err'
iF(t2(2)%x/=4) print *,'err'
iF(t2(2)%y/=6) print *,'err'

print *,'sngtin24:pass'

contains
subroutine my_write_routine_unformatted (dtv, unit, iostat, iomsg)
class(t),INTENT(IN) :: dtv
integer, intent(in) :: unit
integer, intent(out) :: iostat
character (len=*), intent(inout) :: iomsg
write(unit,iostat=iostat,iomsg=iomsg) dtv%x+1,dtv%y+2
end subroutine my_write_routine_unformatted

end
