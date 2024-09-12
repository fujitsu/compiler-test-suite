module m
  type ty
    integer :: x    =9
    real :: y=8
    contains
    procedure :: pls
    generic :: operator(+) => pls
  end type

  integer,save::cnt=1

contains
    function pls(a,b)
    class(ty),intent(in) :: a,b
    type(ty) :: pls

    pls%x=a%x+b%x
    pls%y=1+a%y+b%y
    end function
end module

    subroutine wunform(dtv, unit, iostat, iomsg)
      use m
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
      cnt=cnt+1
      write(unit,iostat=iostat,iomsg=iomsg) dtv%x+dtv%y
    end subroutine

program main
  USE m
  interface write(unformatted)
    subroutine wunform(dtv, unit, iostat, iomsg)
      import ty
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
    end subroutine
  end interface

  interface
   function fun()
   import ty
   type(ty),pointer :: fun(:,:)
   end function

   function ff()
   import ty
   type(ty),pointer :: ff
   end function

   function fun2(dd)
   import ty
   type(ty),target :: dd
   type(ty),allocatable :: fun2(:)
   end function
  end interface
  type ct
   type(ty) :: cmp
   type(ty) :: cmp2(5)
  end type

  type(ct) :: bb
  TYPE (ty) :: t1(6,7),oo
  open(2,file ='fort.45',form="unformatted")
  WRITE(2) oo, t1 ,t1(2,5) ,t1(:,:), t1(:,2), t1(::2,::2), t1([2,4,3],[4,5]),t1([2,6,3],2),oo+oo,&
     bb, bb%cmp, ty(2,4), [ty(2,4)], (/ff(),oo,ty(2,4) /), (/oo,oo/),oo%pls(oo),&
     fun(),reshape((/ff(),oo,ty(2,4) /),[2,1]),fun2(oo),(t1(i,3)+t1(3,i),i=1,6)
  close(2,status="delete")
  if(cnt.ne.154) print*,101
  print*,"pass"
End program

function fun()
use m
type(ty),pointer :: fun(:,:)
allocate(fun(3,4))
fun%x=23
end function

function ff()
use m
type(ty),pointer :: ff
allocate(ff)
ff%x=21
end function

function fun2(dd)
use m
type(ty),target :: dd
type(ty),allocatable :: fun2(:)
allocate(fun2(4),source=dd)
end function
