module m1
implicit none
    type ty
        integer :: ii = 1
      contains
        procedure :: init
        procedure, pass :: check => getData
    end type

interface operator(+)
 module procedure pls
end interface operator(+)

contains
    function pls(a,b)
     class(*),intent(in) :: a
     integer,intent(in) :: b
     class(ty),allocatable :: pls
     allocate(pls)
    
     select type(a)
     type is(integer)
      pls%ii = a+b
     end select
    end function

    elemental subroutine init(dmy, num)
        class(ty), INTENT(INOUT) :: dmy
        integer,INTENT(INOUT) :: num
        dmy%ii = num
        num = num + 1
    end subroutine

    class(*) function getData(dmy)
        pointer :: getData
        class(ty), INTENT(IN) :: dmy
        allocate(integer::getData)

        select type(getData)
        type is(integer)
         getData = dmy%ii
        end select
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
select type(tp2=>tp1(2)%check()+1)
type is(ty)
select type(tp3=>tp1(1)%check())
type is(integer)
if((tp3+1.EQ.ii(1)) .AND. &
   (tp2%ii.EQ.ii(2))) then
    print*,"pass"
else
    print*, "fail"
endif
end select
end select
end select
end program
