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

program main
use m1
implicit none
TYPE(ty) :: obj
integer :: ii
ii = 8
call obj%init(ii)

associate(b=>obj%check())

if (b .EQ. ii) then
    print*,"pass"
else
    print*, "fail"
endif
end associate
end program
