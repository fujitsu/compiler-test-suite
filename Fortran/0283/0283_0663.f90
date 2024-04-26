module a1
implicit none
type, abstract::   abs_base
    integer :: ii
    contains
        procedure(abs_init),deferred, NOPASS :: init
        procedure(abs_getData),deferred :: check
end type
abstract interface 
    elemental subroutine  abs_init(this,  num)
    import abs_base
    class(abs_base), INTENT(INOUT) :: this
    integer, INTENT(INOUT) :: num
    end subroutine 

    integer function abs_getData(this)
    import abs_base
    class(abs_base), INTENT(IN) :: this
    end function 
end interface
end module
module m1
use a1
implicit none
    type, extends(abs_base) ::  ty
      contains
        procedure, NOPASS :: init
        procedure :: check => getData
    end type
contains
    elemental subroutine init(this, num)
        class(abs_base), INTENT(INOUT) :: this
        integer, INTENT(INOUT) :: num
        this%ii = num
        num = num+1
    end subroutine
    integer function getData(this)
        class(ty), INTENT(IN) :: this
        getData = this%ii
    end function
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
    integer :: ii(2)
        ii = (/3,8/)

        associate(tp=>obj%ty_obj)
         call tp%init(obj%ty_obj, ii)
         if ((tp(1)%check() .EQ. ii(1)-1) .AND. &
            (tp(2)%check()+1 .EQ. ii(2))) then
            print*,"pass"
         else
            print*, "fail"
         endif
        end associate
    end subroutine
end module

program main
use m2
call test
end program
