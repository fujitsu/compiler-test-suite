module m1
implicit none
    type ty
        integer :: ii=0
      contains
        procedure, PASS(dmy) :: init
        procedure, NOPASS    :: check => getdata
    end type
contains
    elemental subroutine init(num, dmy)
        class(ty), INTENT(INOUT) :: dmy
        integer  , INTENT(INOUT) :: num
        dmy%ii = num
        num    = num + 1
    end subroutine
    integer function getData(dmy)
        class(ty) :: dmy
        getData   = dmy%ii
    end function
end module

program main
use m1
implicit none
CLASS(ty),ALLOCATABLE :: obj(:)
integer  :: ii(2)
ALLOCATE(obj(2))
ii = (/8, 4/)
call obj%init(ii)
if((obj(1)%check(obj(1))+1.EQ.ii(1)) .AND. &
   (obj(2)%check(obj(2))+1.EQ.ii(2))) then
    print*,"pass"
else
    print*, "fail"
endif
end program
