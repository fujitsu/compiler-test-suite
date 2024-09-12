call s1
call s2
print *,'pass'
contains
subroutine s1
type t1
end type t1
type, extends(t1)::t11
end type t11
type(t1),allocatable::z1
type(t11),allocatable::z11
allocate(t1::z1)
deallocate(z1)
if(extends_type_of(z1,z11).neqv..false.)print *,'err1'
if(extends_type_of(z11,z1).neqv..true.)print *,'err2'
end subroutine
subroutine s2
type t1
end type
type, extends(t1):: t11
end type
type(t1), allocatable :: z1(:)
type(t11), allocatable :: z11(:)
allocate(t1 :: z1(2))
deallocate(z1)
if(extends_type_of(z1,z11).neqv..false.)print *,'err3'
if(extends_type_of(z11,z1).neqv..true.)print *,'err4'
end subroutine
end
