module mod1
  type ty
	integer :: ii
  end type
  type,extends(ty) :: tty
	integer :: jj
  end type

  class(*),allocatable :: calc_1(:,:,:,:)
  class(*),allocatable :: calc_2(:,:,:,:,:)
  class(*),allocatable :: calc_3(:,:,:,:,:,:)
contains
 function fun(d1,d2,d3)
   class(*) :: d1(5,10,8,*)
   class(*) :: d2(5,10,2,3,*)
   class(*) :: d3(10,5,40,19,6,*)
 
   if(sizeof(d1(5,10,8,9)) .NE. 4) print*,"fail d2"
   if(sizeof(d2(5,10,2,3,1)) .NE. 4) print*,"fail d3"
   if(sizeof(d3(10,5,40,19,6,2)) .NE. 8) print*,"fail d4"

    select type(d1)
      type is(ty)
        d1(5,10,8,9)%ii = 4
    end select
    select type(d2)
      type is(real)
	d2(5,10,2,3,1) = 6.0
      select type(d3)
        type is(tty)
	  d3(10,5,40,19,6,2)%jj=7
      end select
    end select
 
 
    select type(d1)
      type is(ty)
	if(d1(5,10,8,9)%ii .NE. 4) then
          print*,"Err 1"
        else
 	  print*,"Pass 1"
	endif
    end select
    select type(d2)
      type is(real)
	if(d2(5,10,2,3,1) .NE. 6) then
	  print*,"Err 2"
	else
	  print*,"Pass 2"
	endif
      select type(d3)
	type is(tty)
	  if(d3(10,5,40,19,6,2)%jj .NE. 7) then
	    print*,"Err 3"
	  else
	    print*,"Pass 3"
	  endif
      end select
    end select
 
fun=5
end function
end
 
use mod1
allocate(ty:: calc_1(5,10,8,9))
allocate(real:: calc_2(5,10,2,3,1))
allocate(tty:: calc_3(10,5,40,19,6,3))
if(fun(calc_1,calc_2,calc_3)==5) print*,'PASS'
end
