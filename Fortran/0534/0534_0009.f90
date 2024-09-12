type t
integer :: i
end type t
type, extends(t) :: t2
integer:: j
end type t2
type tt
class(t),allocatable::a(:)
class(t2),allocatable::aa(:)
end type
class(tt),allocatable::b(:)
allocate(b(2))
allocate(b(2)%aa(2))
b(2)%aa%j=1
b(2)%aa%i=1
b(2)%a=b(2)%aa
if(any(b(2)%a%i/=b(2)%aa%j)) print *,'err'
print *,'pass'
end
