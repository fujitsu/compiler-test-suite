type t
integer,allocatable :: i
end type t
type, extends(t) :: t2
integer,allocatable :: j
end type t2
type tt
type(t),allocatable::a
type(t2),allocatable::aa
end type
type(tt),allocatable::b
allocate(b)
allocate(b%aa)
allocate(b%a)
b%a%i=1
b%aa%j=1
if(b%a%i/=b%aa%j) print *,'err'
print *,'pass'
end
