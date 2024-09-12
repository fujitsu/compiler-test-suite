module a1
implicit none
type, abstract::   abs_base
    integer :: ii
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

integer :: ii(2)
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
        ii = (/4,9/)
        if (stat==1) then
            if (getd .NE. ii(1)-1) print*,'101'
        else if(stat == 2) then
            if ((getd+1) .NE. ii(2)) print*,'102'
        endif
    end subroutine
end module

module m2
use m1
implicit none
  type ty2
    type(ty) :: ty_obj(2)
  end type
contains
    subroutine test()
    use m1
    implicit none
    type(ty2) :: obj
    ii = (/3,8/)
        call obj%ty_obj%gen(obj%ty_obj, ii)
        stat=1
        call obj%ty_obj(1)%gen()
        stat=2
        call obj%ty_obj(2)%gen()
            print*,"PASS"
    end subroutine
end module

program main
use m2
call test
end program
