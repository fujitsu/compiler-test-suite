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
        procedure(abs_init_2),deferred,nopass :: init
        procedure(abs_getData_2),deferred,nopass :: check
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

    subroutine  abs_init_2()
    end subroutine

    integer function abs_getData_2()
    end function
end interface
end module
module m1
use a1
implicit none
    type,ABSTRACT, extends(abs_base):: ty
        integer :: ii
      contains
        procedure :: check => getData
    end type
    type,ABSTRACT, extends(abs_base):: ty_2
        integer :: ii
      contains
        procedure ,nopass:: init_2
        procedure,nopass :: check_2 => getData_2
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
    subroutine  init_2(ii,jj)
integer ::ii,jj
ii=jj
    end subroutine

    integer function getData_2()
      getData_2 =1
    end function
end module

program main
use m1
implicit none
    print*,"pass"
end program
