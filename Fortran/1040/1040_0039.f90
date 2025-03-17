function f1(i) result(x)
integer x(i)
entry    f2(i) result(x)
x=(/(j,j=1,i)/)
end function
integer,pointer:: b(:)
integer c(2)
call s(b,c)
print *,'pass'
contains
subroutine s(b,c)
interface 
function f1(i) result(x)
integer x(i)
end function
function f2(i) result(x)
integer x(i)
end function
end interface
integer a(2)
integer,pointer:: b(:)
integer c(2)
k=10
a(2)=10
allocate(b(2));b(2)=10
c(2)=10
if (any(f1(10)+f1(10)/=2*(/(j,j=1,10)/)))print *,'error-2'
if (any(f2(10)+f2(10)/=2*(/(j,j=1,10)/)))print *,'error-2'
if (any(f1(k)+f2(k)/=2*(/(j,j=1,10)/)))print *,'error-12'
if (any(f2(k)+f1(k)/=2*(/(j,j=1,10)/)))print *,'error-12'
if (any(f1(k+1)+f1(k+1)/=2*(/(j,j=1,11)/)))print *,'error-42'
if (any(f2(k+1)+f2(k+1)/=2*(/(j,j=1,11)/)))print *,'error-44'
if (any(f1(a(2))+f2(a(2))/=2*(/(j,j=1,10)/)))print *,'error-52'
if (any(f2(a(2))+f2(a(2))/=2*(/(j,j=1,10)/)))print *,'error-54'
if (any(f1(b(2))+f1(b(2))/=2*(/(j,j=1,10)/)))print *,'error-62'
if (any(f2(b(2))+f1(b(2))/=2*(/(j,j=1,10)/)))print *,'error-64'
if (any(f1(c(2))+f2(c(2))/=2*(/(j,j=1,10)/)))print *,'error-72'
if (any(f2(c(2))+f2(c(2))/=2*(/(j,j=1,10)/)))print *,'error-74'
n=2
if (any(f1(a(n))+f1(a(n))/=2*(/(j,j=1,10)/)))print *,'error-152'
if (any(f2(a(n))+f2(a(n))/=2*(/(j,j=1,10)/)))print *,'error-154'
if (any(f1(b(n))+f2(b(n))/=2*(/(j,j=1,10)/)))print *,'error-162'
if (any(f2(b(n))+f1(b(n))/=2*(/(j,j=1,10)/)))print *,'error-164'
if (any(f1(c(n))+f2(c(n))/=2*(/(j,j=1,10)/)))print *,'error-172'
if (any(f2(c(n))+f1(c(n))/=2*(/(j,j=1,10)/)))print *,'error-174'
end subroutine
end
