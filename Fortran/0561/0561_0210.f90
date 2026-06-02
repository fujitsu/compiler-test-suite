module m
  type ty
    integer :: x    =9
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
end subroutine
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
        write(unit,*,iostat=iostat,iomsg=iomsg) vlist(1),vlist(2),dtv%x+2,iotype
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
        read(unit,*,iostat=iostat,iomsg=iomsg)a,b, dtv%x
       dtv%x=dtv%x+2
      else
        read(unit,*,iostat=iostat,iomsg=iomsg) dtv%x
       dtv%x=dtv%x+1
     end if
end subroutine sub1
program main
  USE m
  TYPE (ty) :: t1,t2,t3,t4,t5
open(unit=71, file='fort.59',form='FORMATTED')

  write(unit=71,'(DT)'),[t1,t1,t1,t1]
close(unit=71)

open(unit=77, file='fort.59',form='FORMATTED')
read(unit=77,*),t2,t3,t4,t5
close(unit=77,status='delete')
if((t2%x.ne.11) )print*,101,t2%x
if((t3%x.ne.11) )print*,102
if((t4%x.ne.11) )print*,103
if((t5%x.ne.11) )print*,104
print*,'pass'
End program

