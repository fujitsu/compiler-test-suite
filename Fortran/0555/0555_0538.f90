module m1
implicit none
    type ty
        integer :: ii
      contains
        procedure :: init
        procedure, pass :: check => getData
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
module m2
use m1
implicit none
  type ty2
    type(ty) :: ty_obj
  end type
contains
    subroutine test()
    use m1
    implicit none
    type(ty2) :: obj
    integer :: ii
        ii = 8
        call obj%ty_obj%init(ii)
        if (obj%ty_obj%check().EQ. ii) then
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
