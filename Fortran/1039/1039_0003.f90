module m1
 type a
  integer,dimension(0)::a1
 end type
 type b
  character*(0)       ::b1
 end type
end
function f1()
use m1
type(a)::f1
f1%a1=1
end
function f2()
use m1
type(b)::f2
f2%b1='1'
end
use m1
type(a)::f1,x1
type(b)::f2,x2
x1=f1()
x2=f2()
write(2,*)x1
write(2,*)x2
write(2,*)f1(),f2()
write(2,*)1000
rewind 2
read(2,*) i
if (i/=1000)print *,'error'
print *,'pass'
end
