pointer (ip,a)
integer a(10)
integer b(10)
ip=loc(b)
b=(/1,2,3,4,5,6,7,8,9,10/)
call test01_1(ip)
call test01_2(ip)
call test01_3(ip)
print *,'pass'
end 

subroutine test01_1(ip)
pointer (ip,a)
integer a(*)
i=ifun(a,10)
if (i.ne.55) print *,'fail'
contains
function ifun(a,n)
integer a(n)
ifun=0
do i=1,n
 ifun=ifun+a(i)
end do
end function
end subroutine

subroutine test01_2(ip)
pointer (ip,a)
integer a(*)
i=ifun01(a,10)
if (i.ne.55) print *,'fail'
end subroutine
function ifun01(a,n)
integer a(n)
ifun01=0
do i=1,n
 ifun01=ifun01+a(i)
end do
end function

subroutine test01_3(ip)
interface 
  function jfun01(a,n)
  integer a(*)
  end function
end interface
pointer (ip,a)
integer a(*)
i=ifun01(a,10)
if (i.ne.55) print *,'fail'
end subroutine
function jfun01(a,n)
integer a(*)
jfun01=0
do i=1,n
 jfun01=jfun01+a(i)
end do
end function
