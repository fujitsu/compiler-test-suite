call aaaaa
call bbbbb
call ccccc
call ddddd
call eeeee
call fffff
call ggggg
call hhhhh
call iiiii
print *,'pass'
contains
subroutine aaaaa
integer, allocatable :: a(:), b(:)
allocate(a(3))
a =(/1,2,3/)
call move_alloc(from=a, to=b)
if(allocated(a).neqv..false.) print *,'err1'
if(allocated(b).neqv..true.) print *,'err2'
if(any(b/=(/1,2,3/)))  print *,'err3'
end subroutine
subroutine bbbbb
integer,parameter::n=2
real,allocatable:: to(:),from(:)
allocate(to(n))
allocate(from(size(to)*2))
from=1
to=-1
from(size(to)+1:size(to)*2) = to
CALL move_alloc(from=from,to=to)
if(any(to/=(/1.0,1.0,-1.0,-1.0/))) print *,'err'
end subroutine 
subroutine ccccc
integer, allocatable,target:: a(:)
integer, allocatable ::  b(:)
allocate(a(2))
a=(/1,2/)
call move_alloc(a, b)
if(allocated(a).neqv..false.) print *,'err1'
if(allocated(b).neqv..true.) print *,'err2'
if(any(b/=(/1,2/))) print *,'err3'
end subroutine
subroutine ddddd
integer, allocatable :: a(:), b(:)
call move_alloc(a, b)
if(allocated(a).neqv..false.) print *,'err1'
if(allocated(b).neqv..false.) print *,'err2'
end subroutine
subroutine eeeee
integer a,b(:)
allocatable::a(:),b
call move_alloc(a, b)
if(allocated(a).neqv..false.) print *,'err1'
if(allocated(b).neqv..false.) print *,'err2'
end subroutine
subroutine fffff
integer a,b(:)
target a
allocatable::a(:),b
call move_alloc(a, b)
if(allocated(a).neqv..false.) print *,'err1'
if(allocated(b).neqv..false.) print *,'err2'
end subroutine
subroutine ggggg
integer, allocatable :: a(:), b(:)
allocate(b(2))
b=1
call move_alloc(a,b)
if(allocated(a).neqv..false.) print *,'err1'
if(allocated(b).neqv..false.) print *,'err2'
end subroutine
subroutine hhhhh
type typ
integer,pointer:: po1=>null()
end type typ
type(typ), target,allocatable :: to(:)
type(typ), allocatable :: from(:)
integer,target :: i1
i1 = 10
allocate(from(1))
from(1)%po1 => i1
if(allocated(from).neqv..true.) print *,'err'
call move_alloc(from,to)
if(allocated(from).neqv..false.) print *,'err'
if(allocated(to).neqv..true.) print *,'err'
end subroutine
subroutine iiiii
integer,allocatable ,target :: arr(:)
integer,allocatable ,target :: brr(:)
integer,allocatable         :: crr(:)
integer,pointer             :: ipp(:)
allocate(arr(10))
allocate(brr(10))
allocate(crr(10))
ipp=>arr
ipp=(/1,2,3,4,5,6,7,8,9,10/)
brr=1
crr=3
call move_alloc(arr,crr)
if(any(crr/=(/1,2,3,4,5,6,7,8,9,10/))) print *,'err'
deallocate(brr)
allocate(arr(10))
arr=(/1,2,3,4,5,6,7,8,9,10/)
allocate(brr(10))
ipp=>brr
ipp=(/1,2,3,4,5,6,7,8,9,10/)
brr=1
if(any(arr/=(/1,2,3,4,5,6,7,8,9,10/))) print *,'err'
if(any(ipp/=(/(1,i=1,10)/))) print *,'err'
call move_alloc(brr,arr)
if(any(arr/=(/(1,i=1,10)/))) print *,'err'
arr=5
if(any(ipp/=(/(5,i=1,10)/))) print *,'err'
end subroutine
end
