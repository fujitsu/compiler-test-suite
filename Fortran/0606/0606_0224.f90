module m1
implicit none
  type,abstract,public :: ac
    integer j
  contains
     procedure(fun_add),deferred :: add
     generic :: operator(+) => add
  end type ac

  type, public, extends(ac) :: sc
     integer :: i
     contains
       procedure, public :: add => add_sc
       generic :: operator(+) => add
  end type sc

 abstract interface
    subroutine sub_assignment(x,y)
       import :: ac
       class(ac), intent(inout) :: x
       class(ac), intent(in) :: y
     end subroutine sub_assignment

     function fun_add(x,y) result(z)
       import :: ac
       import :: sc
       class(ac),intent(in) :: x
       class(sc),intent(in):: y
       class(sc), allocatable :: z
     end function fun_add
  end interface

  contains
function add_sc(x,y) result(z)
    class(sc),intent(in) :: x
    class(sc),intent(in) :: y
    class(sc), allocatable :: z
    allocate(z,source = x)
    select type(z)
     type is (sc)
        select type(y)
             type is(sc)
                  z%i = x%i + y%i
             end select
     class default
        stop
    end select
  end function add_sc
end module

function fun_add(x,y) result(z)
       use m1
       class(ac),intent(in) :: x
       class(sc),intent(in) :: y
       class(sc), allocatable :: z
       allocate(z,source = y)
       print*, x%j
       z%i =  y%i+1
end function fun_add

subroutine main
  use m1
  implicit none
  type(sc) :: sc2, sc1
  sc1%i = 1
  sc2%i = 2
  sc1%j = 1
  sc2%j = 2
  sc2 = sc1 + sc2
  if(sc2%i == 3) then
     print*,'pass'
  else
     print*,'Error'
  end if
end subroutine

program test
  call main
end program
