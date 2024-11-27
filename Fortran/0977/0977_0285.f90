module mod
type typea
integer(kind=4),allocatable::c(:)
end type
end module
call aaaaa
print *,'pass'
contains
subroutine aaaaa
integer(kind=4)::bb
call s1(aa(1).ne.bb(1))
end subroutine
subroutine s1(l)
logical(kind=4)::l
if(l.eqv..true.) print *,'err1'
end subroutine
function aa(i) result(res)
use mod
integer::i
type(typea),allocatable::c1(:),c2(:)
integer(kind=4)::res
allocate(c1(5))
do k=1,5
allocate(c1(k)%c(k))
c1(k)%c(k)=int(i)
enddo
call move_alloc(c1,c2)
res=c2(1)%c(1)
end function
end
function bb(i) result(res)
use mod
type(typea),allocatable::c1(:),c2(:)
integer(kind=4)::res
allocate(c1(5))
do k=1,i
allocate(c1(k)%c(k))
c1(k)%c(k)=int(i)
enddo
if(allocated(c1(1)%c).neqv..true.) print *,'err1'
call move_alloc(c1,c2)
if(allocated(c1).neqv..false.) print *,'err2'
if(allocated(c2).neqv..true.) print *,'err3'
if(allocated(c2(1)%c).neqv..true.) print *,'err4'
if(c2(1)%c(1).ne.1) print *,'err5'
res=c2(1)%c(1)
end function
