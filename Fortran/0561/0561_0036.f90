module m
  type ty
    integer :: x    =9
    real :: y=8
  contains
    procedure :: wform
    procedure :: pls
    generic :: write(formatted) => wform
    generic :: operator(+) => pls
  end type
  integer, save :: check=1
contains
    subroutine wform(dtv, unit, iotype, vlist, iostat, iomsg)
      class(ty), intent(in) :: dtv
      integer, intent(in) :: unit
      character(*), intent(in) :: iotype
      integer, intent(in) :: vlist(:)
      integer, intent(out) :: iostat
      character(*), intent(inout) :: iomsg
      check=check+1
      if(size(vlist)/=0) then
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+dtv%y+1,vlist(1),vlist(2),iotype
      else if(size(vlist)==0) then
        write(unit,*,iostat=iostat,iomsg=iomsg) dtv%x+dtv%y,iotype
      end if
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
  open(10,file="fort.40",form="formatted")
  WRITE(10,*) oo, t1 ,t1(2,5) ,t1(:,:), t1(:,2), t1(::2,::2), t1([2,4,3],[4,5]),t1([2,6,3],2),oo+oo,&
     bb, bb%cmp, ty(2,4), [ty(2,4)], (/ff(),oo,ty(2,4) /), (/oo,oo/),oo%pls(oo),&
     fun(),reshape((/ff(),oo,ty(2,4) /),[2,1]),fun2(oo),(t1(i,3)+t1(3,i),i=1,6)
  WRITE(10,"(DT)") oo, t1 ,t1(2,5) ,t1(:,:), t1(:,2), t1(::2,::2), t1([2,4,3],[4,5]),t1([2,6,3],2),oo+oo,&
     bb, bb%cmp, ty(2,4), [ty(2,4)], (/ff(),oo,ty(2,4) /), (/oo,oo/),oo%pls(oo),&
     fun(),reshape((/ff(),oo,ty(2,4) /),[2,1]),fun2(oo),(t1(i,3)+t1(3,i),i=1,6)
  WRITE(10,"(DT(3,4))") oo, t1 ,t1(2,5) ,t1(:,:), t1(:,2), t1(::2,::2), t1([2,4,3],[4,5]),t1([2,6,3],2),oo+oo,&
     bb, bb%cmp, ty(2,4), [ty(2,4)], (/ff(),oo,ty(2,4) /), (/oo,oo/),oo%pls(oo),&
     fun(),reshape((/ff(),oo,ty(2,4) /),[2,1]),fun2(oo),(t1(i,3)+t1(3,i),i=1,6)
  close(10,status="delete")
  if(check.ne.460)print*,101
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
