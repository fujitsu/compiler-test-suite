module m
  type ty
    integer :: x    =9
     real :: y=8
  contains
    procedure :: wunform
    procedure :: pls
    procedure :: runform
     generic :: read(unformatted) => runform
    generic :: write(unformatted) => wunform
    generic :: operator(+) => pls
  end type
contains
    subroutine wunform(dtv, unit, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
     write(unit,iostat=iostat,iomsg=iomsg) dtv%x+1,dtv%y+1
    end subroutine
    subroutine runform(dtv, unit, iostat, iomsg)
      class(ty), intent(inout) :: dtv 
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
     read(unit,iostat=iostat,iomsg=iomsg) dtv%x,dtv%y
      dtv%x=dtv%x+1
    end subroutine

    function pls(a,b)
    class(ty),intent(in) :: a,b
    type(ty) :: pls

    pls%x=a%x+b%x
    pls%y=1+a%y+b%y
    end function
end module

program main
  USE m
  TYPE (ty) :: t1,t2
  OPEN(2,file ='fort.29',form="unformatted")
  WRITE(2) t1+t1
  close(2)
  OPEN(22,file ='fort.29',form="unformatted")
  READ(22) t2
  close(22,status="delete")
  if(t2%x.ne.20)print*,101
  if(t2%y.ne.18)print*,102
  print*,"pass"
End program