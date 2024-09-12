call s1
print *,'pass'
contains
subroutine s1
type t1
end type
type, extends(t1):: t11
end type
type, extends(t11):: t111
end type
type t2
end type t2
type(t1) a1
type(t11) a11
type(t111) a111
type(t2) a2
if(same_type_as(a1,a11).neqv..false.) print *,'ng1'
if(same_type_as(a1,a2).neqv..false.) print *,'ng2'
if(same_type_as(a11,a111).neqv..false.) print *,'ng3'
if(same_type_as(a111,a1).neqv..false.) print *,'ng4'
if(extends_type_of(a1,a2).neqv..false.) print *,'ng5'
if(extends_type_of(a1,a11).neqv..false.) print *,'ng6'
end subroutine
end
