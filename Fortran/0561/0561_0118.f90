module m
  type ty
    integer :: x    =9
     real :: y=8
  contains
    procedure :: wunform
    procedure :: runform
     generic :: read(unformatted) => runform
     generic :: write(unformatted) => wunform
  end type
contains
    subroutine wunform(dtv, unit, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
      write(unit,iostat=iostat,iomsg=iomsg) dtv%x+1,dtv%y+2
    end subroutine
    subroutine runform(dtv, unit, iostat, iomsg)
      class(ty), intent(inout) :: dtv 
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
     read(unit,iostat=iostat,iomsg=iomsg) dtv%x,dtv%y
      dtv%x=dtv%x+1
    end subroutine
end module
program main
  USE m
  interface
  function fun()
   import ty
   TYPE (ty),pointer :: fun
  end function
  end interface

  type(ty) :: t2
  OPEN(2,file ='fort.24',form="unformatted")
  WRITE(2) fun()
  close(2)
  OPEN(22,file ='fort.24',form="unformatted")
  READ(22) t2
  close(22,status="delete")
  if(t2%x.ne.21)print*,101
  if(t2%y.ne.20)print*,102
  print*,"pass"
End program

 function fun()
  use m
  TYPE (ty),target,save :: d
  TYPE (ty),pointer :: fun
  fun=>d
  fun%x = fun%x+10
  fun%y = fun%y+10
 end function

