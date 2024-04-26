module mod1
type base
integer::jj
contains
final::f1
end type

type,extends(base) :: ty
integer :: ii
end type
integer::flag=0

contains
subroutine f1(e)
 type(base)::e
 if (e%jj/=20) print *,101
flag=flag+1
end subroutine
end module

use mod1
class(*),allocatable :: calc(:,:)
allocate(ty::calc(5,4))
select type(calc)
type is(ty)
calc%ii=10
calc%jj=20
write(1,*)calc%ii
end select
deallocate(calc)
if (flag/=20)print *,102
print *,'pass'
end

