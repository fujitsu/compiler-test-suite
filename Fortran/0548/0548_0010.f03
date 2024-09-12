call s1
call s2
print *,'pass'
contains
subroutine s1
type t1
end type t1
type, extends(t1)::t11
end type t11
type(t1),target::a1
type(t11),target::a11
type(t1),pointer::b1
type(t11),pointer::b11
b1=>null()
b11=>null()
if(extends_type_of(b1,a1).neqv..true.) print *,'ng1'  
if(extends_type_of(b11,a1).neqv..true.) print *,'ng2' 
if(extends_type_of(b11,a11).neqv..true.) print *,'ng3'
if(extends_type_of(mold=a1,a=b1).neqv..true.) print *,'ng4'  
if(extends_type_of(mold=a1,a=b11).neqv..true.) print *,'ng5' 
if(extends_type_of(mold=a11,a=b11).neqv..true.) print *,'ng6'
b1=>a1
b11=>a11
if(extends_type_of(b1,a1).neqv..true.) print *,'ng7'
if(extends_type_of(b11,a1).neqv..true.) print *,'ng8'
if(extends_type_of(b11,a11).neqv..true.) print *,'ng9'
if(extends_type_of(a=b1,mold=a1).neqv..true.) print *,'ng10'
if(extends_type_of(a=b11,mold=a1).neqv..true.) print *,'ng11'
if(extends_type_of(a=b11,mold=a11).neqv..true.) print *,'ng12'
end subroutine
subroutine s2
type t1
end type
type, extends(t1):: t11
end type
type(t1) a1
type(t11) a11
type(t1), pointer::b1
type(t11),pointer::b11
if(extends_type_of(b1,a1).neqv..true.) print *,'ng13'
if(extends_type_of(b11,a1).neqv..true.) print *,'ng14'
if(extends_type_of(b11,a11).neqv..true.) print *,'ng15'
allocate(t1::b1)
allocate(t11::b11)
if(extends_type_of(b1,a1).neqv..true.) print *,'ng16'
if(extends_type_of(b11,a1).neqv..true.) print *,'ng17'
if(extends_type_of(b11,a11).neqv..true.) print *,'ng18'
end subroutine
end
