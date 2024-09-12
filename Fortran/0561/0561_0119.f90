module m
  type ty
    integer :: x    =9
     real :: y=8
  contains
    procedure :: wunform
     generic :: write(unformatted) => wunform
  end type

  type rt
    integer :: x=3
  end type
  integer::a
contains
    subroutine wunform(dtv, unit, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
      a=dtv%x
      write(unit,iostat=iostat,iomsg=iomsg) dtv%x+dtv%y
    end subroutine
end module
program main
  USE m
  interface
  function fun()
   import ty
   TYPE (ty),pointer :: fun(:)
  end function
  function fun2()
   import rt
   TYPE (rt),pointer :: fun2(:)
  end function
  end interface

  open(2,file='fort.25',form="unformatted")
  WRITE(2) fun()
  WRITE(2) fun2()
  close(2,status="delete")
 if(a.ne.19)print*,101
 print*,'pass'
End program

 function fun()
  use m
  TYPE (ty),target,save :: d(4)
  TYPE (ty),pointer :: fun(:)
  fun=>d
  fun%x = fun%x+10
  fun%y = fun%y+10
 end function

 function fun2()
  use m
  TYPE (rt),target,save :: d(4)
  TYPE (rt),pointer :: fun2(:)
  fun2=>d
  fun2%x = fun2%x+10
 end function
