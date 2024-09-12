module m1
implicit none
    type ty
        integer :: ii
      contains
        procedure, NOPASS :: init
        procedure :: check => getdata
    end type
contains
    elemental subroutine init(dmy, num)
        class(ty), INTENT(INOUT) :: dmy
        integer, INTENT(INOUT) :: num
        dmy%ii = num
        num = num+1
    end subroutine
    integer function getData(dmy)
        class(ty), INTENT(IN) :: dmy
        getData = dmy%ii
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
        call obj%ty_obj%init(obj%ty_obj, ii)
        if ((obj%ty_obj(1)%check() .EQ. ii(1)-1) .AND. &
            (obj%ty_obj(2)%check()+1 .EQ. ii(2))) then
            print*,"pass"
        else
            print*, "fail"
        endif
    end subroutine
end module

program main
use m2
call test
end program
