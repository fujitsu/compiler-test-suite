module m
  type ty
    integer :: x    =9
     real :: y=8
  contains
    procedure :: pp1=>wform
    procedure :: pp2=>wread
     generic :: write(unformatted) => pp1
     generic :: read(unformatted) => pp2
  end type

  type,extends(ty)::tty
    integer :: x2
     real :: y2
  contains
    procedure :: pp1=>wform2
    procedure :: pp2=>wread2
  end type
contains
    subroutine wform(dtv, unit, iostat, iomsg)
      class(ty),intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg

      write(unit,iostat=iostat,iomsg=iomsg) dtv%x+1,dtv%y+1
    end subroutine

    subroutine wform2(dtv, unit,  iostat, iomsg)
      class(tty),intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg

      write(unit,iostat=iostat,iomsg=iomsg) dtv%x+3,dtv%y+5,dtv%x2+1,dtv%y2+1
    end subroutine

    subroutine wread(dtv, unit, iostat, iomsg)
      class(ty),intent(inout) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg

      read(unit,iostat=iostat,iomsg=iomsg) dtv%x,dtv%y
      dtv%x=dtv%x+1
    end subroutine

    subroutine wread2(dtv, unit,  iostat, iomsg)
      class(tty),intent(inout) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg

      read(unit,iostat=iostat,iomsg=iomsg) dtv%x,dtv%y,dtv%x2,dtv%y2
      dtv%x=dtv%x+2
      dtv%x2=dtv%x2+1
    end subroutine
end module
program main
  USE m
  CLASS(ty),pointer :: t1,obj,t12,obj2
  allocate(t1,t12)
  allocate(tty::obj,obj2)

  select type(obj)
    classis(tty)
      obj%x2=2
      obj%y2=3
  end select

  open(2,file ='fort.46',form="unformatted")
  close(2,status="delete")

  open(2,file ='fort.46',form="unformatted")
  write(2)t1,obj
  close(2)

  open(2,file ='fort.46',form="unformatted")
  read(2)t12,obj2
  close(2,status="delete")

  select type(obj2)
  classis(tty)
   if(obj2%x2/=2+1+1) print*,101
   if(obj2%y2/=3+1) print*,102
   if(obj2%x/=9+3+2) print*,103
   if(int(obj2%y)/=8+5) print*,104
   if(t12%x/=10+1) print*,105
   if(int(t12%y)/=9) print*,106
  end select

  print*,"pass"
End program

