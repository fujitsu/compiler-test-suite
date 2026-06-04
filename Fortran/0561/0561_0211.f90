module m
  type ty
    integer :: x  
    real :: y
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
type(ty)::t2,t3
 open(unit=71, file='fort.60',form='FORMATTED')
  write(unit=71,*),[t1(),ty(9,8)]
close(unit=71)
    open(unit=77, file='fort.60',form='FORMATTED')
 read(unit=77,*)t2,t3
close(unit=77,status='delete')

if(t2%x .ne. 21)print*,101
if(t3%x .ne. 11)print*,102
print*,'pass'
  contains
  function t1()
  type(ty) :: t1
  t1%x=19
  t1%y=18
  end function
End program

