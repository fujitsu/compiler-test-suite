module m1
type x
  integer:: xx=1
end type
type(x)::v
end
module m2
type y
  integer:: yy
  contains
  procedure::tp1,tp2
end type
contains
subroutine tp1(t)
 class(y)::t
 write(1,*) t%yy
end subroutine
subroutine tp2(t,k)
 class(y)::t
 write(1,*) t%yy,k
end subroutine
end
subroutine s001
do concurrent(k=1:2)
end do
end
subroutine s002
error stop
end
subroutine s003
integer,pointer::p1(:)
contiguous p1
integer,pointer,contiguous::p2(:)
allocate(p1(2),p2(2))
end
subroutine s004
integer,parameter::a(*)=[1,2]
write(1,*) a
end
subroutine s005
interface 
  subroutine erd
  end subroutine
end interface
interface gen
   procedure :: erd
end interface
end
subroutine s006
complex:: c=(0.1,0.1)
intrinsic::&
ACOSH,ASINH,ATANH,BGE,BGT,BLE,BLT,DSHIFTL,DSHIFTR,HYPOT,&
LEADZ,MASKL,MASKR,MERGE_BITS,POPCNT,POPPAR,SHIFTA,SHIFTL,&
SHIFTR,STORAGE_SIZE,TRAILZ,IS_CONTIGUOUS,&
ACOS,ASIN,ATAN,COSH,SINH,TAN,TANH
write(1,*) acos(c)
write(1,*) asin(c)
write(1,*) atan(c)
write(1,*) cosh(c)
write(1,*) sinh(c)
write(1,*) tanh(c)
write(1,*) tan(c)
write(1,*) atan(0.1,0.1)
write(1,*) acosh(0.1)
write(1,*) asinh(0.1)
write(1,*) atanh(0.1)
write(1,*) BGE(1,1)
end
subroutine s007
use iso_c_binding
write(1,*) c_sizeof(1)
end
subroutine s008
use iso_fortran_env
write(1,*) compiler_options()
write(1,*) compiler_version()
end
subroutine s009
block
end block
end
subroutine s010
use iso_fortran_env
write(1,*) int8
write(1,*) int16
write(1,*) int32
write(1,*) int64
write(1,*) real32
write(1,*) real64
write(1,*) real128
write(1,*) character_kinds
write(1,*) integer_kinds
write(1,*) real_kinds
write(1,*) logical_kinds
end
subroutine s011
integer,allocatable::a1(:),a2(:),a3(:)
allocate(a1,source=[1])
allocate(a2,mold=[1])
allocate(a2(1),mold=[1])
end
subroutine s012
integer,target::a(2,3,1)
integer,pointer::p(:,:)
p(1:3,1:2)=> a
end
subroutine s013
integer,pointer::p=>null()
call s013_in(p)
contains
subroutine s013_in(n)
integer,optional::n
if (present(n)) print *,1
end subroutine
end
print *,'pass'
end
