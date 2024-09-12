call s1
call s2
print *,'pass'
contains
subroutine s1
type t1
integer::a
end type
type,extends(t1)::t2
integer::b
end type
type(t1) z1(3,3)
type(t2) z2(3,3)
if(same_type_as(z1,z1).neqv..true.) print *,'err1'
if(same_type_as(z2,z2).neqv..true.) print *,'err2'
if(same_type_as(z1,z2).neqv..false.) print *,'err3'
if(extends_type_of(z1,z2).neqv..false.) print *,'err4'
end subroutine
subroutine s2
type t1
integer::a
end type
type,extends(t1)::t2
integer::b
end type
type(t1) z1(2,3)
type(t2) z2(3,3,3)
if(same_type_as(z1,z1).neqv..true.) print *,'err5'
if(same_type_as(z2,z2).neqv..true.) print *,'err6'
if(same_type_as(z1,z2).neqv..false.) print *,'err7'
if(extends_type_of(z1,z2).neqv..false.) print *,'err8'
end subroutine
end
