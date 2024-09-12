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
  class(ty),allocatable :: calc
  class(ty),pointer :: calc_1(:)
  class(ty),allocatable :: calc_2(:,:)
  class(ty),pointer :: calc_3(:,:,:)
contains
 function fun(d1,d2,d3,d4)
  class(ty) ::d1
  class(ty) :: d2(:)
  class(ty) :: d3(:,:)
  class(ty) :: d4(:,:,:)

  if(sizeof(d1) .NE. 4) print*,"fail d1"
  if(sizeof(d2(2)) .NE. 4) print*,"fail d2"
  if(sizeof(d3(3,9)) .NE. 12) print*,"fail d3"
  if(sizeof(d4(5,5,1)) .NE. 8) print*,"fail d4"

  select type(d1)
    type is(ty)
	d1%ii = 5
    select type(d2)
      type is(tty)
        d2(1)%jj = 4
    end select
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
    select type(d2)
      type is(tty)
	if(d2(1)%jj .NE. 4) then
	  print*,"Err 2"
        else
	  print*,"Pass 2"
        endif
        if(d1%ii .NE. 5) then
          print*,"Err 11"
        else
          print*,"Pass 11"
        endif
    end select
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
  type(ty),target :: tgt1(5)
  type(tty),target :: tgt3(5,5,5)
  allocate(ty:: calc)
  allocate(ttty:: calc_2(5,10))
  calc_1 => tgt1
  calc_3 => tgt3
  if(fun(calc,calc_1,calc_2,calc_3)==5) print*,'PASS'
end