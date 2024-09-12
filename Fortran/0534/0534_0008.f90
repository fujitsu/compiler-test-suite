type t
integer :: i
end type t
type, extends(t) :: t2
integer:: j
end type t2
type tt
class(t),allocatable::a
class(t2),allocatable::aa
end type
class(tt),allocatable::b
allocate(b)
allocate(b%aa)
b%aa%j=1
b%aa%i=1
b%a=b%aa
if(b%a%i/=b%aa%j) print *,'err',b%a%i
print *,'pass'
end
