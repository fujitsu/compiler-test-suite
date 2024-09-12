module a1
implicit none
type, abstract::   abs_base
    integer :: ii=0
    contains
        procedure(abs_init),deferred, NOPASS :: init
        procedure(abs_getData),deferred :: check
        generic::gen=>init,check
end type
abstract interface 
    elemental subroutine  abs_init(this,  num)
    import abs_base
    class(abs_base), INTENT(INOUT) :: this
    integer, INTENT(INOUT) :: num
    end subroutine 

    subroutine abs_getData(this)
    import abs_base
    class(abs_base), INTENT(IN) :: this
    end subroutine 
end interface

integer :: ii(2,4)
integer :: stat=0
end module
module m1
use a1
implicit none
    type, extends(abs_base) ::  ty
      contains
        procedure, NOPASS :: init 
        procedure :: check => getdata
    end type
contains
    elemental subroutine init(this, num)
        class(abs_base), INTENT(INOUT) :: this
        integer, INTENT(INOUT) :: num
        this%ii = num
        num = num+1
    end subroutine

    subroutine getData(this)
        class(ty), INTENT(IN) :: this
        integer::getd
        getd = this%ii
        ii = reshape((/4,9,5,8,6,3,5,5/),[2,4])
        if (stat==1) then
            if (getd .NE. ii(1,1)+1) print*,'101'
        else if(stat == 2) then
            if ((getd+1) .NE. ii(1,2)-1) print*,'102'
        endif
    end subroutine
end module

module m2
use m1
implicit none
contains
    subroutine test(ty_obj)
    use m1
    implicit none
    class(ty) :: ty_obj(2,4)
    ii = reshape((/3,8,5,8,6,3,5,5/),[2,4])
    select type(ty_obj)
    class default
        call ty_obj%gen(ty_obj, ii)
        stat=1
        call ty_obj(1,4)%gen()
        stat=2
        call ty_obj(2,3)%gen()
    end select
            print*,"PASS"
    end subroutine
end module

program main
use m2
type(ty) :: act(2,4)
call test(act)
end program
