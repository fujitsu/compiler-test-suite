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
  class(ty),pointer :: calc_1(:,:,:,:,:,:)
  class(ty),pointer :: calc_2(:,:,:,:,:,:,:)
contains
 function fun(d1,d2)
  class(ty),pointer :: d1(:,:,:,:,:,:)
  class(ty),pointer :: d2(:,:,:,:,:,:,:)

  if(sizeof(d1(10,4,6,7,8,2)) .NE. 8) print*,"fail d1"
  if(sizeof(d2(7,9,6,16,10,11,13)) .NE. 12) print*,"fail d2"

    select type(d1)
      type is(tty)
        d1(10,4,6,7,8,2)%jj = 7
        d1(10,4,6,7,8,9)%ii = 19
      select type(d2)
        type is(ttty)
	  d2(7,9,6,16,10,11,13)%kk = 61
          d2(7,9,6,16,10,11,11)%jj = 13
      end select
    end select
 
  select type(d1)
    type is(tty)
	if(d1(10,4,6,7,8,9)%ii .NE. 19) then
          print*,"Err 1"
	else
	  print*,"Pass 1"
	endif
	if(d1(10,4,6,7,8,2)%jj .NE. 7) then
          print*,"Err 11"
	else
	  print*,"Pass 11"
	endif
    select type(d2)
      type is(ttty)
	if(d2(7,9,6,16,10,11,13)%kk .NE. 61) then
	  print*,"Err 2"
        else
	  print*,"Pass 2"
        endif
        if(d2(7,9,6,16,10,11,11)%jj .NE. 13) then
          print*,"Err 12"
        else
          print*,"Pass 12"
        endif
    end select
  end select
 
fun=9
end function
end
 
use mod1
  type(tty),target :: tgt_1(10,4,6,7,8,9)
  type(ttty),target :: tgt_2(7,9,6,16,10,11,13)
  calc_1 => tgt_1
  calc_2 => tgt_2
  if(fun(calc_1,calc_2)==9) print*,'PASS'
end
