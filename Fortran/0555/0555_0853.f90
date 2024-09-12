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
  integer,allocatable :: calc_1(:)
  class(ty),allocatable :: calc_2(:,:,:,:,:)
  class(ty),allocatable :: calc_3(:,:,:,:,:,:,:)
  real,allocatable :: calc_4(:,:,:,:)
contains
 function fun(d1,d2,d3,d4)
  integer :: d1(5)
  class(ty) :: d2(2,10,10,8,7)
  class(ty) :: d3(9,17,4,5,3,19,11)
  real :: d4(5,5,5,8)

  if(sizeof(d1(2)) .NE. 4) print*,"fail d2"
  if(sizeof(d2(1,9,7,5,7)) .NE. 12) print*,"fail d3"
  if(sizeof(d3(8,10,1,5,2,11,7)) .NE. 8) print*,"fail d4"
  if(sizeof(d4(1,2,3,4)) .NE. 4) print*,"fail d4"

    select type(d2)
      type is(ttty)
	d2(2,9,7,5,1)%kk = 6
        d1(5) = 5
      select type(d3)
        type is(tty)
	  d3(7,11,3,2,1,18,9)%jj=7
          d4(5,2,3,7) = 10.98
      end select
    end select

    select type(d2)
      type is(ttty)
        if(d1(5) .NE. 5) then
          print*,"Err 1"
        else
          print*,"Pass 1"
        endif
        if(d2(2,9,7,5,1)%kk .NE. 6) then
	  print*,"Err 2"
        else
          print*,"Pass 2"
        endif
      select type(d3)
        type is(tty)
          if(d3(7,11,3,2,1,18,9)%jj .NE. 7) then
            print*,"Err 3"
          else
            print*,"Pass 3"
          endif
          if(d4(5,2,3,7) .NE. 10.98) then
            print*,"Err 4"
          else
            print*,"Pass 4"
          endif
      end select
    end select
 
fun=d1(5)
end function
end
 
use mod1
allocate(integer:: calc_1(5))
allocate(ttty:: calc_2(2,10,10,8,7))
allocate(tty:: calc_3(9,17,4,5,3,19,11))
allocate(real:: calc_4(5,5,5,8))
if(fun(calc_1,calc_2,calc_3,calc_4)==5) print*,'PASS'
end
