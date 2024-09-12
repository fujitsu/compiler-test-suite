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

program main
use m1
implicit none
type(ty) :: obj(2)
integer :: ii(2)
ii = (/8,7/)
call obj%init(obj, ii)
if((obj(1)%check()+1.EQ.ii(1)) .AND. &
   (obj(2)%check()+1.EQ.ii(2))) then
    print*,"pass"
else
    print*, "fail"
endif
end program
