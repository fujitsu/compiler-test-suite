subroutine s1
integer i(2)
integer n(1+i(2)-1)
parameter(i=2)
n=1
if (any(n/=1))write(6,*) "NG"
end
subroutine s2
dimension i(2)
integer n(1+i(2)-1)
parameter(i=2)
n=1
if (any(n/=1))write(6,*) "NG"
end
call s1
call s2
print *,'pass'
end
