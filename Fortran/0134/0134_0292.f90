subroutine s
USE,INTRINSIC::ISO_C_BINDING
integer,target::t1
integer,allocatable,target::t2
integer,pointer::t3
type(c_ptr)::p1,p2,p3,p4,p5,p6
type y
  integer::y1
  integer,pointer::t5
  integer::t6
end type
type(y)::t5
type z
  integer::y1
  integer,pointer::t5
  integer::t6
end type
type(z),target::t6
p1=c_loc(t1)
allocate(t2)
p2=c_loc(t2)
allocate(t3)
p3=c_loc(t3)
p4=c_loc(t4())
allocate(t5%t5)
p5=c_loc(t5%t5)
p6=c_loc(t6%t6)
t1=11
t2=12
t3=13
t5%t5=15
t6%t6=16
call sub(p1,p2,p3,p4,p5,p6)
contains
function t4()
integer,pointer::t4
allocate(t4)
t4=14
end function
subroutine sub(p1,p2,p3,p4,p5,p6)
type(c_ptr),value::p1,p2,p3,p4,p5,p6
integer,pointer::fp1,fp2,fp3,fp4,fp5,fp6
call c_f_pointer(p1,fp1)
call c_f_pointer(p2,fp2)
call c_f_pointer(p3,fp3)
call c_f_pointer(p4,fp4)
call c_f_pointer(p5,fp5)
call c_f_pointer(p6,fp6)
if(fp1/=11)print *,1001,fp1
if(fp2/=12)print *,1002,fp2
if(fp3/=13)print *,1003,fp3
if(fp4/=14)print *,1004,fp4
if(fp5/=15)print *,1005,fp5
if(fp6/=16)print *,1006,fp6
end subroutine
end
call s
print *,'pass'
end

