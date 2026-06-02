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
  class(ty),pointer :: calc_1(:)
  class(ty),pointer :: calc_2(:,:)
  class(ty),pointer :: calc_3(:,:,:)
contains
 function fun(d1,d2,d3,d4)
  class(ty) ::d1
  class(ty) :: d2(*)
  class(ty) :: d3(5,*)
  class(ty) :: d4(5,5,*)
  select type(A=>d1)
    type is(ty)
	A%ii = 5
       if(sizeof(A) .NE. 4) print*,"fail d1"
       select type(A=>d1)
        type is(ty)
   	  A%ii = 5
          if(sizeof(d1) .NE. 4) print*,"fail d1"
        end select
    select type(A=>d2)
      type is(tty)
        A(1)%jj = 4
        if(sizeof(A(2)) .NE. 8) print*,"fail d2"
    end select
    select type(A=>d3)
      type is(ttty)
	A(2,2)%kk = 6
        if(sizeof(A(3,9)) .NE. 12) print*,"fail d3"
      select type(A=>d4)
        type is(tty)
	  A(2,3,4)%jj=7
          if(sizeof(A(5,5,1)) .NE. 8) print*,"fail d4"
      end select
    end select
  end select
 
  select type(A1=>d1)
    type is(ty)
	if(A1%ii .NE. 5) then
          print*,"Err 1"
	endif
    select type(A=>d2)
      type is(tty)
	if(A(1)%jj .NE. 4) then
	  print*,"Err 2"
        endif
        if(A1%ii .NE. 5) then
          print*,"Err 11"
        endif
    end select
    select type(A=>d3)
      type is(ttty)
        if(A(2,2)%kk .NE. 6) then
	  print*,"Err 3"
        endif
      select type(A=>d4)
        type is(tty)
          if(A(2,3,4)%jj .NE. 7) then
            print*,"Err 4"
          endif
      end select
    end select
  end select
 
fun=5
end function
end
 
use mod1
  type(ty),target :: tgt
  type(tty),target :: tgt_1(5)
  type(ttty),target :: tgt_2(5,10)
  type(tty),target :: tgt_3(5,5,5)
  calc => tgt
  calc_1 => tgt_1
  calc_2 => tgt_2
  calc_3 => tgt_3
  select type (A=>calc)
   type is (ty)
    select type (A=>calc)
      type is (ty)
       if(fun(A,calc_1,calc_2,calc_3)==5) print*,'PASS'
   end select
   end select
end
