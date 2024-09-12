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
  class(ty),pointer :: calc
  integer,pointer :: calc_1(:)
  class(ty),pointer :: calc_2(:,:)
  class(ty),pointer :: calc_3(:,:,:)
  real,pointer :: calc_4(:,:,:,:)
contains
 function fun(d1,d2,d3,d4,d5)
  class(ty) ::d1
  integer :: d2(:)
  class(ty) :: d3(:,:)
  class(ty) :: d4(:,:,:)
  real :: d5(:,:,:,:)

  if(sizeof(d1) .NE. 4) print*,"fail d1"
  if(sizeof(d2(2)) .NE. 4) print*,"fail d2"
  if(sizeof(d3(3,9)) .NE. 12) print*,"fail d3"
  if(sizeof(d4(5,5,1)) .NE. 8) print*,"fail d4"
  if(sizeof(d5(1,2,3,4)) .NE. 4) print*,"fail d4"

  select type(d1)
    type is(ty)
	d1%ii = 5
    select type(d3)
      type is(ttty)
	d3(2,2)%kk = 6
      select type(d4)
        type is(tty)
	  d4(2,3,4)%jj=7
      end select
    end select
  end select
 
  select type(d1)
    type is(ty)
	if(d1%ii .NE. 5) then
          print*,"Err 1"
	else
	  print*,"Pass 1"
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
      end select
    end select
  end select
 
fun=5
end function
end
 
use mod1
  type(ty),target :: tgt
  integer,target :: tgt_1(5)
  type(ttty),target :: tgt_2(5,10)
  type(tty),target :: tgt_3(5,5,5)
  real,target :: tgt_4(5,5,5,8)
  calc => tgt
  calc_1 => tgt_1
  calc_2 => tgt_2
  calc_3 => tgt_3
  calc_4 => tgt_4
  if(fun(calc,calc_1,calc_2,calc_3,calc_4)==5) print*,'PASS'
end
