  
module m
  type ty
    integer :: x    =9
    real :: y=8
  end type

integer::a=1,b=1
 character(len=14)::ch
interface write(formatted)
    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      import ty
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
    end subroutine
end interface
 interface read(formatted)
subroutine sub1 (dtv, unit, iotype, v_list, iostat, iomsg)
    import ty
    class(ty), intent(inout)            :: dtv
    integer, intent(in)             :: unit
    character(len=*), intent(in)    :: iotype
    integer, intent(in)             :: v_list (:)
    integer, intent(out)            :: iostat
    character(len=*), intent(inout) :: iomsg
end subroutine sub1
end interface
end module

    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      use m
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
subroutine sub1 (dtv, unit, iotype, v_list, iostat, iomsg)
    use m
    class(ty), intent(inout)            :: dtv
    integer, intent(in)             :: unit
    character(len=*), intent(in)    :: iotype
    integer, intent(in)             :: v_list (:)
    integer, intent(out)            :: iostat
    character(len=*), intent(inout) :: iomsg
   ch=iotype
          if(size(v_list)/=0) then
        read(unit,*,iostat=iostat,iomsg=iomsg)a,b, dtv%x,dtv%y
       dtv%x=dtv%x+2
      else
        read(unit,*,iostat=iostat,iomsg=iomsg) dtv%x
       dtv%x=dtv%x+1
     end if
end subroutine sub1
program main
  USE m
TYPE (ty) :: t1(5),t2(3)
open(unit=71, file='fort.67',form='FORMATTED')
  write(unit=71,'(DT)'),t1(3)
close(unit=71)
 open(unit=77, file='fort.67',form='FORMATTED')
read(unit=77,'(DT)')t2(2)
close(unit=77,status='delete')

if(t2(2)%x .ne.11)print*,101
print*,'pass'

End program

