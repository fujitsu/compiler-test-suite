module mod1
  type ty
	integer :: ii
  end type
  type,extends(ty) :: tty
	integer :: jj
  end type
  type,extends(tty) :: ttty
	integer :: kk
  end type
  type new
        class(ty),allocatable :: cptr(:,:,:,:,:,:)
  end type
  type new1
        class(ty),allocatable :: cptr(:,:,:,:,:,:,:)
  end type

  class(tty),pointer :: calc_1(:,:,:,:,:,:)
  class(ttty),pointer :: calc_2(:,:,:,:,:,:,:)
contains
 function fun(d1,d2)
  class(tty) :: d1(3,4,6,7,8,9)
  class(ttty) :: d2(2,3,4,5,6,7,9)
  class(ty),allocatable :: cptr1(:,:,:,:,:,:)
  class(ty),allocatable :: cptr2(:,:,:,:,:,:,:)

  type(new) :: d11,d12(10)
  type(new1) :: d22,d23(20)
  integer :: i
  
  d11 = new(d1)
  d22 = new1(d2)
  d12  = (/(new(d1),i=1,10)/)
  d23 = (/(new1(d2),i = 1,20)/)

  if(sizeof(d1(3,4,6,7,8,2)) .NE. 8) print*,"fail d1"
  if(sizeof(d2(2,1,3,5,4,6,8)) .NE. 12) print*,"fail d2"

  allocate(cptr1,source = d11%cptr)
  allocate(cptr2,source = d22%cptr)
    select type(cptr1)
      type is(tty)
        d1(3,4,6,7,8,2)%jj = 7
        d1(2,3,4,5,6,7)%ii = 19
      select type(cptr2)
        type is(ttty)
	  d2(2,3,4,5,6,7,9)%kk = 61
          d2(1,2,3,4,5,6,7)%jj = 13
      end select
    end select
  deallocate(cptr1,cptr2)
 
  allocate(cptr1,source = d12(5)%cptr)
  allocate(cptr2,source = d23(11)%cptr)
  select type(cptr1)
    type is(tty)
	if(d1(2,3,4,5,6,7)%ii .NE. 19) then
          print*,"Err 1"
	else
	  print*,"Pass 1"
	endif
	if(d1(3,4,6,7,8,2)%jj .NE. 7) then
          print*,"Err 11"
	else
	  print*,"Pass 11"
	endif
    select type(cptr2)
      type is(ttty)
	if(d2(2,3,4,5,6,7,9)%kk .NE. 61) then
	  print*,"Err 2"
        else
	  print*,"Pass 2"
        endif
        if(d2(1,2,3,4,5,6,7)%jj .NE. 13) then
          print*,"Err 12"
        else
          print*,"Pass 12"
        endif
    end select
  end select
  deallocate(cptr1,cptr2)
 
fun=9
end function
end
 
use mod1
allocate(tty:: calc_1(3,4,6,7,8,9))
allocate(ttty:: calc_2(2,3,4,5,6,7,9))
if(fun(calc_1,calc_2)==9) print*,'PASS'
end
