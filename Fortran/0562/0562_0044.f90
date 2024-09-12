interface gnr
function fun1(d1,d2)
real :: fun1
real,pointer,intent(in)::d1,d2
end function
function fun2(d1,d2)
integer::fun2
integer,pointer,intent(in)::d1,d2
end function
function fun3(d1,d2)
logical::fun3
logical,pointer,intent(in)::d1,d2
end function
end interface

integer,target::t1,t2
real,target::r1,r2
logical,target::c1,c2
t1=10
t2=7
r1=10.5
r2=7.5
c1=.true.
c2=.false.
if(gnr(t1,t2)==73)print*,"pass"
if(gnr(c1,c2))print*,"pass"
if(gnr(r1,r2)==18.0)print*,"pass"
end

function fun1(d1,d2)
real :: fun1
real,pointer,intent(in)::d1,d2
if (.not.associated(d1))print*,101
if (.not.associated(d2))print*,102
fun1=d1+d2
end function
function fun2(d1,d2)
integer::fun2
integer,pointer,intent(in)::d1,d2
if (.not.associated(d1))print*,103
if (.not.associated(d2))print*,104
fun2=d1*d2+3
end function
function fun3(d1,d2)
logical :: fun3
logical,pointer,intent(in)::d1,d2
if (.not.associated(d1))print*,105
if (.not.associated(d2))print*,106
fun3 = d1 .or. d2
end function
