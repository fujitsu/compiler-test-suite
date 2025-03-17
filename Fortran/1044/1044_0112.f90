Module mod
type typea
complex(kind=4),allocatable::c(:)
end type
end module
call aaaaa
print *,'pass'
contains
subroutine aaaaa
use mod
type(typea),dimension(5)::res
res=aa()
do k=1,5
if(any(res(k)%c/=(1.0,0.0))) print *,'err'
enddo
end subroutine
function aa() result(res)
use mod
type(typea),allocatable::res(:)
allocate(res(5))
do k=1,5
allocate(res(k)%c(k))
res(k)%c=cmplx(1)
enddo
end function 
end
