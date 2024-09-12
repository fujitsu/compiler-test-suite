call s1
call s2
print *,'pass'
contains
subroutine s1
type t1
end type
type(t1) a1
type(t1), pointer :: b1
type(t1), allocatable:: c1
if(extends_type_of(a=b1,mold=a1).neqv..true.) print *,'ng1'
if(extends_type_of(c1,a1).neqv..true.) print *,'ng2'
if(extends_type_of(c1,b1).neqv..true.) print *,'ng3'
if(extends_type_of(a=b1,mold=a1).neqv..true.) print *,'ng4'
if(extends_type_of(mold=a1,a=c1).neqv..true.) print *,'ng5'
if(extends_type_of(a=c1,mold=b1).neqv..true.) print *,'ng6'
end subroutine
subroutine s2
type t1_
  integer :: a
end type t1_
type t2__
  integer :: b
end type t2__
type(t1_) a1
type(t2__) a2
if(same_type_as(a1,a1).neqv..true.) print *,'ng7'
if(same_type_as(a2,a2).neqv..true.) print *,'ng8'
if(same_type_as(a=a1,b=a2).neqv..false.) print *,'ng9'
if(extends_type_of(a=a1,mold=a2).neqv..false.) print *,'ng10'
if(same_type_as(a=a1,b=a1).neqv..true.) print *,'ng11'
if(same_type_as(b=a2,a=a2).neqv..true.) print *,'ng12'
if(same_type_as(b=a2,a=a1).neqv..false.) print *,'ng13'
if(extends_type_of(mold=a2,a=a1).neqv..false.) print *,'ng14'
end subroutine s2
end
