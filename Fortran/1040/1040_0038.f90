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
if (size(f1(10))/=10)print *,'error-1'
if (any(f1(10)/=(/(j,j=1,10)/)))print *,'error-2'
if (size(f2(10))/=10)print *,'error-11'
if (any(f2(k)/=(/(j,j=1,10)/)))print *,'error-12'
if (size(f1(k))/=10)print *,'error-31'
if (any(f1(k)/=(/(j,j=1,10)/)))print *,'error-32'
if (size(f2(k))/=10)print *,'error-33'
if (any(f2(k)/=(/(j,j=1,10)/)))print *,'error-34'
if (size(f1(k+1))/=11)print *,'error-41'
if (any(f1(k+1)/=(/(j,j=1,11)/)))print *,'error-42'
if (size(f2(k+1))/=11)print *,'error-43'
if (any(f2(k+1)/=(/(j,j=1,11)/)))print *,'error-44'
if (size(f1(a(2)))/=10)print *,'error-51'
if (any(f1(a(2))/=(/(j,j=1,10)/)))print *,'error-52'
if (size(f2(a(2)))/=10)print *,'error-53'
if (any(f2(a(2))/=(/(j,j=1,10)/)))print *,'error-54'
if (size(f1(b(2)))/=10)print *,'error-61'
if (any(f1(b(2))/=(/(j,j=1,10)/)))print *,'error-62'
if (size(f2(b(2)))/=10)print *,'error-63'
if (any(f2(b(2))/=(/(j,j=1,10)/)))print *,'error-64'
if (size(f1(c(2)))/=10)print *,'error-71'
if (any(f1(c(2))/=(/(j,j=1,10)/)))print *,'error-72'
if (size(f2(c(2)))/=10)print *,'error-73'
if (any(f2(c(2))/=(/(j,j=1,10)/)))print *,'error-74'
n=2
if (size(f1(a(n)))/=10)print *,'error-151'
if (any(f1(a(n))/=(/(j,j=1,10)/)))print *,'error-152'
if (size(f2(a(n)))/=10)print *,'error-153'
if (any(f2(a(n))/=(/(j,j=1,10)/)))print *,'error-154'
if (size(f1(b(n)))/=10)print *,'error-161'
if (any(f1(b(n))/=(/(j,j=1,10)/)))print *,'error-162'
if (size(f2(b(n)))/=10)print *,'error-163'
if (any(f2(b(n))/=(/(j,j=1,10)/)))print *,'error-164'
if (size(f1(c(n)))/=10)print *,'error-171'
if (any(f1(c(n))/=(/(j,j=1,10)/)))print *,'error-172'
if (size(f2(c(n)))/=10)print *,'error-173'
if (any(f2(c(n))/=(/(j,j=1,10)/)))print *,'error-174'
end subroutine
end
