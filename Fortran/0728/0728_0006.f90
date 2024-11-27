call sub01()
print *,'pass'
end

module mod01
contains
subroutine isub01(is)
common /com/ it
integer(kind=4) ,pointer  :: is(:,:)
integer(kind=4) ,target   :: it(10,10)
integer(kind=4) ,pointer  :: is2(:,:)
integer(kind=4) ,target   :: it2(10,10)
is=>null()
return 
entry isub02(is)
is=>it
return 
entry isub03(is,is2,it2)
is=>it2
if (.not.associated(is,is)) write(6,*) "NG"
if (.not.associated(is,is2)) write(6,*) "NG"
if (.not.associated(is,it2)) write(6,*) "NG"
if (.not.associated(is2,it2)) write(6,*) "NG"
if (.not.associated(is,it)) write(6,*) "NG"
if (.not.associated(is2,it)) write(6,*) "NG"
return
entry isub04(is,is2,it2)
is2=>it2
if (.not.associated(is,is)) write(6,*) "NG"
if (.not.associated(is,is2)) write(6,*) "NG"
if (.not.associated(is,it2)) write(6,*) "NG"
if (.not.associated(is2,it2)) write(6,*) "NG"
if (.not.associated(is,it)) write(6,*) "NG"
if (.not.associated(is2,it)) write(6,*) "NG"
end subroutine
end

subroutine sub01()
use mod01
common /com/ it
integer(kind=4) ,pointer  :: ia(:,:)
integer(kind=4) ,target   :: it(10,10)
ia=>it
call isub01(ia)
call isub03(ia,ia,it)
ia=>null()
call isub04(ia,ia,it)
end
