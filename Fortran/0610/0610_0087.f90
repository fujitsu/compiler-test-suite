module m1
implicit none
    type ty
        integer :: ii
      contains
        procedure :: init
        procedure, pass :: check => getData
    end type
contains
    elemental subroutine init(dmy, num)
        class(ty), INTENT(INOUT) :: dmy
        integer,INTENT(INOUT) :: num
        dmy%ii = num
        num = num + 1
    end subroutine
    integer function getData(dmy)
        class(ty), INTENT(IN) :: dmy
        getData = dmy%ii
    end function
end module

program main
use m1
implicit none
class(ty),allocatable :: obj(:)
integer :: ii(2)

allocate(obj(2))
ii = (/8,9/)
call obj%init(ii)

select type(tp1=>obj)
class is(ty)
associate(tp2=>tp1(2)%check()+1)
if((tp1(1)%check()+1.EQ.ii(1)) .AND. &
   (tp2.EQ.ii(2))) then
    print*,"pass"
else
    print*, "fail"
endif
end associate
end select
end program
