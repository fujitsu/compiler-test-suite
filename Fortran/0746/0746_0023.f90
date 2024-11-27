subroutine s1
integer i(2)
integer n(i(2))
parameter(i=2)
n=1
if (any(n/=1))write(6,*) "NG"
end
subroutine s2
dimension i(2)
integer n(i(2))
parameter(i=2)
n=1
if (any(n/=1))write(6,*) "NG"
end
call s1
call s2
print *,'pass'
end
