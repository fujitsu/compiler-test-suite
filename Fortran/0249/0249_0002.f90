type ty
integer:: i=1
end type

type(ty),allocatable::p1(:,:),p4(:,:)
allocate(p1, p4, mold=fun())
if(allocated(p1) .and. allocated(p4))print*,'pass'
if(size(p1) /= 9) print*,101

contains
function fun()
type(ty),allocatable::fun(:,:)
allocate(fun(3,3))
end function
end

