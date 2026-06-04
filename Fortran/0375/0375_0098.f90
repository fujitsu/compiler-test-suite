module m1
use,intrinsic::iso_c_binding
type(c_ptr),bind(c)::a3
interface
subroutine csub1(i) bind(c)
use,intrinsic::iso_c_binding
type(c_ptr)::i
end subroutine
subroutine csub2(i) bind(c)
use,intrinsic::iso_c_binding
type(c_ptr),value::i
end subroutine
function cfun() bind(c)
use,intrinsic::iso_c_binding
type(c_ptr)::cfun
end function
end interface
integer,target::t1=1,t2=2,t3=3,t4=4,t5=5,t6=6
type(c_ptr)::v1,v2,v3,v4,v5,v6
contains
subroutine set
bind(c)::/a4/
common /a4/ a4
type(c_ptr)::a4
v1=c_loc(t1)
v2=c_loc(t2)
v3=c_loc(t3)
v4=c_loc(t4)
v5=c_loc(t5)
v6=c_loc(t6)
a4=c_loc(t4)
a3=c_loc(t3)
end subroutine
subroutine fsub1(i) bind(c)
type(c_ptr)::i
pointer::fp
if (c_associated(i,v2))print *,'fail'
call c_f_pointer(i,fp)
end subroutine
subroutine fsub2(i) bind(c)
type(c_ptr),value::i
integer,pointer::fp
pointer (j,ii)
integer(8)::ii
j=loc(i)
call c_f_pointer(i,fp)
j=loc(fp)
if (fp/=5)print *,'fail'
end subroutine
function ffun() bind(c) result(r)
type(c_ptr)::r
r=v6
end function
end
block data 
use m1
bind(c)::/a4/
common /a4/ a4
type(c_ptr)::a4
end
subroutine s1
use m1
type(c_ptr)::a5,a2
a2=v2
call csub1(a2)
a5=v5
call csub2(a5)
if (.not.c_associated(cfun(),v6))print *,'fail'
call c0
call fsub1(a2)
call fsub2(a5)
if (.not.c_associated(ffun(),v6))print *,'fail'
if (.not.c_associated(a3,v3))print *,'fail'
end
subroutine c0
use m1
common /a4/ a4
bind(c)::/a4/
type(c_ptr)::a4
if (.not.c_associated(a4,v4))print *,'fail'
if (.not.c_associated(a3,v3))print *,'fail'
end
subroutine c1(i) bind(c)
use m1
type(c_ptr)::i
if (.not.c_associated(i,v1))print *,'fail'
entry      c2(i) bind(c)
if (.not.c_associated(i,v2))print *,'fail'
return 
entry      c3(i) bind(c)
if (.not.c_associated(i,v3))print *,'fail'
return 
entry      c4(i) bind(c)
if (.not.c_associated(i,v4))print *,'fail'
return 
entry      c5(i) bind(c)
if (.not.c_associated(i,v5))print *,'fail'
return 
entry      c6(i) bind(c)
if (.not.c_associated(i,v6))print *,'fail'
end
subroutine cv1(i) bind(c)
use m1
type(c_ptr),value::i
if (.not.c_associated(i,v1))print *,'fail'
end 
subroutine      cv2(i) bind(c)
use m1
type(c_ptr),value::i
if (.not.c_associated(i,v2))print *,'fail'
end 
subroutine      cv3(i) bind(c)
use m1
type(c_ptr),value::i
if (.not.c_associated(i,v3))print *,'fail'
end 
subroutine      cv4(i) bind(c)
use m1
type(c_ptr),value::i
if (.not.c_associated(i,v4))print *,'fail'
end 
subroutine      cv5(i) bind(c)
use m1
type(c_ptr),value::i
if (.not.c_associated(i,v5))print *,'fail'
end 
subroutine      cv6(i) bind(c)
use m1
type(c_ptr),value::i
if (.not.c_associated(i,v6))print *,'fail'
end
use m1
  use m1
  type(c_ptr)::i
  integer,target::k=5
  i=c_loc(k)
  call fsub2(i)

print *,'pass'
end

subroutine csub1(i) bind(c)
use,intrinsic::iso_c_binding
type(c_ptr)::i
end subroutine
subroutine csub2(i) bind(c)
use,intrinsic::iso_c_binding
type(c_ptr),value::i
end subroutine
function cfun() bind(c)
use,intrinsic::iso_c_binding
type(c_ptr)::cfun
end function
