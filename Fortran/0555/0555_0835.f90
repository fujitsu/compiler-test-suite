module mod1
  type ty
	integer :: ii=0
  end type
  type,extends(ty) :: tty
	integer :: jj=0
  end type

  class(*),pointer :: calc
  class(*),pointer :: calc_1(:)
  class(*),pointer :: calc_2(:,:)
  class(*),pointer :: calc_3(:,:,:)
contains
 function fun(d1,d2,d3,d4)
   class(*) ::d1
   class(*) :: d2(*)
   class(*) :: d3(5,*)
   class(*) :: d4(5,5,*)
 
   if(sizeof(d1) .NE. 4) print*,"fail d1"
   if(sizeof(d2(2)) .NE. 4) print*,"fail d2"
   if(sizeof(d3(3,5)) .NE. 4) print*,"fail d3"
   if(sizeof(d4(2,3,5)) .NE. 8) print*,"fail d4"

  select type(d1)
    type is(integer)
      d1 = 5
    select type(d2)
      type is(ty)
        d2(1)%ii = 4
    end select
    select type(d3)
      type is(real)
	d3(2,2) = 6.0
      select type(d4)
        type is(tty)
	  d4(2,3,4)%jj=7
      end select
    end select
  end select
 
  select type(d1)
    type is(integer)
      if(d1 .NE. 5) then
	print*,"Err 1"
      else
        print*,"Pass 1"
      endif
 
    select type(d2)
      type is(ty)
	if(d2(1)%ii .NE. 4) then
          print*,"Err 2"
        else
 	  print*,"Pass 2"
	endif
	if(d1 .NE. 5) then
	  print*,"Err 11"
	else
	  print*,"Pass 11"
	endif
    end select
    select type(d3)
      type is(real)
	if(d3(2,2) .NE. 6) then
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
  integer,target :: tgt
  type(ty),target :: tgt_1(5)
  real,target :: tgt_2(5,10)
  type(tty),target :: tgt_3(5,5,5)
  calc => tgt
  calc_1 => tgt_1
  calc_2 => tgt_2
  calc_3 => tgt_3
  if(fun(calc,calc_1,calc_2,calc_3)==5) print*,'PASS'
end
