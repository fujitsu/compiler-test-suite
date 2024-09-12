module m
  type base
   integer :: r
   contains
    procedure :: wunform
    procedure :: runform
    generic :: read(unformatted) => runform
    generic :: write(unformatted)=>wunform
  end type
  type,extends(base) :: ty
    integer :: x    =9
    complex :: y=(2.3,8.5)
    integer :: z    =2
  end type

  type bt
   integer :: x = 9
  end type
contains
    subroutine wunform(dtv, unit, iostat, iomsg)
      class(base), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
      select type(dtv)
      class is(ty)
      write(unit,iostat=iostat,iomsg=iomsg) dtv%x+1,int(aimag(dtv%y))+2
      end select
    end subroutine
    subroutine runform(dtv, unit, iostat, iomsg)
      class(base), intent(inout) :: dtv 
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
      select type(dtv)
      class is(ty)
      read(unit,iostat=iostat,iomsg=iomsg) dtv%x,dtv%z
      dtv%x=dtv%x+1
      end select
    end subroutine

end module

program main
  USE m
  class (base),pointer :: t1,t2
  type(bt) :: gg1,gg2
  allocate(ty::t1)
  allocate(ty::t2)
  OPEN(2,file ='fort.44',form="unformatted")
  WRITE(2) t1
  WRITE(2) gg1
  close(2)
  OPEN(22,file ='fort.44',form="unformatted")
  READ(22) t2
  READ(22) gg2
  close(22,status="delete")
  select type(t2)
  class is(ty)
  if(t2%x.ne.11)print*,101
  if(t2%z.ne.10)print*,102
  end select
  if(gg2%x.ne.9)print*,103
  print*,"pass"
End program

