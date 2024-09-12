call s1
call s2
call s3
print *,'pass'
contains
subroutine s1
type :: p1
end type
type,extends(p1) :: c1
end type
type,extends(c1) :: d1
end type
type(c1) :: a
type(d1) :: b
if(extends_type_of(a,b).neqv..false.) print *,'err1'
if(extends_type_of(a,a).neqv..true.) print *,'err2'
if(extends_type_of(b,b).neqv..true.) print *,'err3'
if(same_type_as(a,b).neqv..false.) print *,'err4'
if(same_type_as(a,a).neqv..true.) print *,'err5'
if(same_type_as(b,b).neqv..true.) print *,'err6'
end subroutine
subroutine s2
type t1
integer::a
end type
type,extends(t1)::t2
integer::b
end type
type(t1) z1
type(t2) z2
if(same_type_as(z1,z1).neqv..true.) print *,'err7'
if(same_type_as(z2,z2).neqv..true.) print *,'err8'
if(same_type_as(z1,z2).neqv..false.) print *,'err9'
if(extends_type_of(z1,z2).neqv..false.) print *,'err10'
if(extends_type_of(z2,z1).neqv..true.) print *,'err11'
end subroutine
subroutine s3
type t1
integer::a
end type
type,extends(t1)::t2
integer::b
end type
type(t1) z1(2,3)
type(t2) z2(3,3,3)
if(same_type_as(z1,z1).neqv..true.) print *,'err12'
if(same_type_as(z2,z2).neqv..true.) print *,'err13'
if(same_type_as(z1,z2).neqv..false.) print *,'err14'
if(extends_type_of(z1,z2).neqv..false.) print *,'err15'
end subroutine
end
