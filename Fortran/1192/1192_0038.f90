module mod1
type base
integer::jj
contains
final::f1
end type

type,extends(base) :: ty
integer :: ii
end type

contains
subroutine f1(e)
 type(base)::e
 write(7,*)e%jj
end subroutine
end module

use mod1
class(*),allocatable :: calc(:,:)      !!!!!!!!!! Unlimited polymorphic object
logical::file_exists
allocate(ty::calc(5,4))       !!!!!!!! Dynamic type ty
select type(calc)
type is(ty)
calc%jj=10
!print *,calc%ii
end select
deallocate(calc)      !!!!!!!!!!!!!!!!
inquire(file="fort.7", exist=file_exists)
if (file_exists) then
rewind 7
do n=1,20
 read(7,*) nn
 if (nn/=10) print *,2929
end do
endif
print *,'sngg208p : pass'
end
