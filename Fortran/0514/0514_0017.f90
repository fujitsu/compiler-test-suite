module a1
implicit none
external :: init
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
    type, abstract,extends(abs_base):: ty
        integer :: ii
      contains
        procedure :: init2
        procedure :: check => getData
    end type
contains
    subroutine init2(dmy, num)
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
class(ty), pointer:: obj
class(abs_base), pointer :: ptr
integer :: ii
if (1.eq.2) then
ptr=>obj
ii = 8
call ptr%init(ii)
if (ptr%check().EQ. ii) then
else
    print*, "fail"
endif
end if
call init()
end program
subroutine init()
    print*,"pass"
end
