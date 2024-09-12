module mod1
  type ty
	integer :: ii=0
  end type
  type,extends(ty) :: tty
	integer :: jj=0
  end type
  type,extends(tty) :: ttty
	integer :: kk=0
  end type
  type new
     class(ty),pointer :: cptr(:,:,:) => NULL()
  end type

  class(ty),allocatable :: calc
  integer,pointer :: calc_1(:)
  class(ty),allocatable :: calc_2(:,:)
  class(ty),pointer :: calc_3(:,:,:)
  real,allocatable :: calc_4(:,:,:,:)
contains
 function fun(d1,d2,d3,d4,d5)
  type(new) :: a1
  class(ty) ::d1
  integer :: d2(5)
  class(ty) :: d3(5,10)
  class(ty),target :: d4(5,5,5)
  real :: d5(5,5,5,8)

  class(ty),pointer :: cptr(:,:,:)

  if(sizeof(d1) .NE. 4) print*,"fail d1"
  if(sizeof(d2(2)) .NE. 4) print*,"fail d2"
  if(sizeof(d3(3,9)) .NE. 12) print*,"fail d3"
  if(sizeof(d4(5,5,1)) .NE. 8) print*,"fail d4"
  if(sizeof(d5(1,2,3,4)) .NE. 4) print*,"fail d4"
  
  a1 = new(d4)
  select type(d1)
    type is(ty)
	d1%ii = 5
    select type(d3)
      type is(ttty)
	d3(2,2)%kk = 6
      cptr=>a1%cptr
      select type(cptr)
        type is(tty)
	  cptr(2,3,4)%jj=7
      end select
    end select
  end select
 
  select type(d1)
    type is(ty)
	if(d1%ii .NE. 5) then
          print*,"Err 1"
	else
	  print*,"Pass 1"
          d5(4,3,2,1) = 6.98
	endif
    select type(d3)
      type is(ttty)
        if(d3(2,2)%kk .NE. 6) then
	  print*,"Err 3"
        else
          print*,"Pass 3"
        endif
      select type(d4)
        type is(tty)
          if(d4(2,3,4)%jj .NE. 7) then
            print*,"Err 4"
          else
            print*,"Pass 4"
          endif
         if(d5(4,3,2,1) .NE. 6.98) then
            print*,"Err 5"
         else
            print*,"Pass 5"  
         end if
      end select
      cptr=>a1%cptr  
      select type(cptr)
        type is(tty)
          if(cptr(2,3,4)%jj .NE. 7) then
            print*,"Err 4.1"
          else
            print*,"Pass 4.1"
          endif
      end select
    end select
  end select
 
fun=5
end function
end
 
use mod1
integer,target :: tgt_1(5)
type(tty),target :: tgt_3(5,5,5)
allocate(ty:: calc)
calc_1 => tgt_1
allocate(ttty:: calc_2(5,10))
calc_3 => tgt_3
allocate(real:: calc_4(5,5,5,8))
if(fun(calc,calc_1,calc_2,calc_3,calc_4)==5) print*,'PASS'
end
