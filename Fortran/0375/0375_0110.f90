module m1
use,intrinsic::iso_c_binding
type(c_ptr),bind(c,name='Name01')::p1
type,bind(c):: x
 integer::x1
 type(c_ptr)::p11
 type(c_ptr)::p12(2)
end type
type,bind(c):: y
 type(c_ptr)::y1
 type(c_ptr)::y2
 integer::y3
end type
type(y),bind(c,name='Name02')::p2
type(c_ptr)::p4,p5
bind(c,name='Name03') /n/
common /n/p4,p5
integer::flag
integer::n2=2
type(x),bind(c,name='Name05')::p6(2,2)
contains
type(c_ptr) function s01(p) bind(c) result(r)
type(c_ptr),value::p
integer,pointer::fp,fpx
call c_f_pointer(p,fp)
if (fp/=100)print *,'fail'
r=p
select case(flag)
case(1)
call c_f_pointer(p1,fpx)
case(2)
call c_f_pointer(p2%y1,fpx)
case(3)
call c_f_pointer(p2%y2,fpx)
case(4)
case(5)
call c_f_pointer(p4,fpx)
case(6)
call c_f_pointer(p5,fpx)
case(7)
call c_f_pointer(p6(2,2)%p11,fpx)
case(8)
call c_f_pointer(p6(2,2)%p12(2),fpx)
end select
if (.not.associated(fp,fpx))print *,'fail'
end function
end
use m1
interface
 type(c_ptr) function s02(p) bind(c) result(r)
 use,intrinsic::iso_c_binding
 type(c_ptr),value::p
 integer,pointer::fp
 end function
end interface
integer,target::t=100,t2=200
integer,pointer::fp,fpz
type(c_ptr)::v1
flag=1
p1=c_loc(t)
v1=s01(p1)
call c_f_pointer(p1,fp)
call c_f_pointer(v1,fpz)
if (.not.associated(fp,fpz))print *,'fail'
if (fp/=100)print *,'fail'
p1=c_loc(t2)
v1=s02(p1)
call c_f_pointer(p1,fp)
call c_f_pointer(v1,fpz)
if (.not.associated(fp,fpz))print *,'fail'
if (fp/=200)print *,'fail'
flag=2
p2%y1=c_loc(t)
v1=s01(p2%y1)
call c_f_pointer(p2%y1,fp)
call c_f_pointer(v1,fpz)
if (.not.associated(fp,fpz))print *,'fail'
if (fp/=100)print *,'fail'
p2%y1=c_loc(t2)
v1=s02(p2%y1)
call c_f_pointer(p2%y1,fp)
call c_f_pointer(v1,fpz)
if (.not.associated(fp,fpz))print *,'fail'
if (fp/=200)print *,'fail'
flag=3
p2%y2=c_loc(t)
v1=s01(p2%y2)
call c_f_pointer(p2%y2,fp)
call c_f_pointer(v1,fpz)
if (.not.associated(fp,fpz))print *,'fail'
if (fp/=100)print *,'fail'
p2%y2=c_loc(t2)
v1=s02(p2%y2)
call c_f_pointer(p2%y2,fp)
call c_f_pointer(v1,fpz)
if (.not.associated(fp,fpz))print *,'fail'
if (fp/=200)print *,'fail'
flag=5
p4=c_loc(t)
v1=s01(p4)
call c_f_pointer(p4,fp)
call c_f_pointer(v1,fpz)
if (.not.associated(fp,fpz))print *,'fail'
if (fp/=100)print *,'fail'
p4=c_loc(t2)
v1=s02(p4)
call c_f_pointer(p4,fp)
call c_f_pointer(v1,fpz)
if (.not.associated(fp,fpz))print *,'fail'
if (fp/=200)print *,'fail'
flag=6
p5=c_loc(t)
v1=s01(p5)
call c_f_pointer(p5,fp)
call c_f_pointer(v1,fpz)
if (.not.associated(fp,fpz))print *,'fail'
if (fp/=100)print *,'fail'
p5=c_loc(t2)
v1=s02(p5)
call c_f_pointer(p5,fp)
call c_f_pointer(v1,fpz)
if (.not.associated(fp,fpz))print *,'fail'
if (fp/=200)print *,'fail'
flag=7
p6(2,2)%p11=c_loc(t)
v1=s01(p6(2,2)%p11)
call c_f_pointer(p6(2,2)%p11,fp)
call c_f_pointer(v1,fpz)
if (.not.associated(fp,fpz))print *,'fail'
if (fp/=100)print *,'fail'
p6(2,2)%p11=c_loc(t2)
v1=s02(p6(2,2)%p11)
call c_f_pointer(p6(2,2)%p11,fp)
call c_f_pointer(v1,fpz)
if (.not.associated(fp,fpz))print *,'fail'
if (fp/=200)print *,'fail'
p6(n2,n2)%p11=c_loc(t)
v1=s01(p6(n2,n2)%p11)
call c_f_pointer(p6(n2,n2)%p11,fp)
call c_f_pointer(v1,fpz)
if (.not.associated(fp,fpz))print *,'fail'
if (fp/=100)print *,'fail'
p6(n2,n2)%p11=c_loc(t2)
v1=s02(p6(n2,n2)%p11)
call c_f_pointer(p6(n2,n2)%p11,fp)
call c_f_pointer(v1,fpz)
if (.not.associated(fp,fpz))print *,'fail'
if (fp/=200)print *,'fail'
flag=8
p6(2,2)%p12(2)=c_loc(t)
v1=s01(p6(2,2)%p12(2))
call c_f_pointer(p6(2,2)%p12(2),fp)
call c_f_pointer(v1,fpz)
if (.not.associated(fp,fpz))print *,'fail'
if (fp/=100)print *,'fail'
p6(2,2)%p12(2)=c_loc(t2)
v1=s02(p6(2,2)%p12(2))
call c_f_pointer(p6(2,2)%p12(2),fp)
call c_f_pointer(v1,fpz)
if (.not.associated(fp,fpz))print *,'fail'
if (fp/=200)print *,'fail'
p6(n2,n2)%p12(n2)=c_loc(t)
v1=s01(p6(n2,n2)%p12(n2))
call c_f_pointer(p6(n2,n2)%p12(n2),fp)
call c_f_pointer(v1,fpz)
if (.not.associated(fp,fpz))print *,'fail'
if (fp/=100)print *,'fail'
p6(n2,n2)%p12(n2)=c_loc(t2)
v1=s02(p6(n2,n2)%p12(n2))
call c_f_pointer(p6(n2,n2)%p12(n2),fp)
call c_f_pointer(v1,fpz)
if (.not.associated(fp,fpz))print *,'fail'
if (fp/=200)print *,'fail'
print *,'pass'
end
type(c_ptr) function s02(p) bind(c) result(r)
use,intrinsic::iso_c_binding
use m1
type(c_ptr),value::p
integer,pointer::fp,fpx
call c_f_pointer(p,fp)
if (fp/=200)print *,'fail'
r=p
select case(flag)
case(1)
call c_f_pointer(p1,fpx)
case(2)
call c_f_pointer(p2%y1,fpx)
case(3)
call c_f_pointer(p2%y2,fpx)
case(4)
case(5)
call c_f_pointer(p4,fpx)
case(6)
call c_f_pointer(p5,fpx)
case(7)
call c_f_pointer(p6(2,2)%p11,fpx)
case(8)
call c_f_pointer(p6(2,2)%p12(2),fpx)
end select
call c_f_pointer(p1,fpx)
if (.not.associated(fp,fpx))print *,'fail'
end function
