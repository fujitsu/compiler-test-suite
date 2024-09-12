module a1
implicit none
type, abstract::   abs_base
    integer :: jj
    contains
        procedure(abs_init),deferred :: init
        procedure(abs_getData),deferred :: check
end type
type, abstract::   abs_base_2
    integer :: jj
    contains
        procedure(abs_init),deferred,nopass :: init
        procedure(abs_getData),deferred,nopass :: check
end type
abstract interface
    subroutine  abs_init(dmy, num)
    import abs_base
    integer :: num
    class(abs_base) :: dmy
    end subroutine

    integer function abs_getData(dmy)
    import abs_base
    class(abs_base) :: dmy
    end function
end interface
end module
module m1
use a1
implicit none
    type, extends(abs_base):: ty
        integer :: ii
      contains
        procedure :: init
        procedure :: check => getData
    end type
contains
    subroutine init(dmy, num)
        class(ty) :: dmy
        integer :: num
        dmy%ii = num
    end subroutine
    integer function getData(dmy)
        class(ty) :: dmy
        getData = dmy%ii
    end function
end module

program main
use m1
implicit none
type(ty), target :: obj
class(abs_base), pointer :: ptr
integer :: ii
ptr=>obj
ii = 8
call ptr%init(ii)
if (ptr%check().EQ. ii) then
    print*,"pass"
else
    print*, "fail"
endif
end program
