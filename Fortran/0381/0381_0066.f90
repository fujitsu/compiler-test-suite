subroutine s1
complex,allocatable::a,b(:)
allocate(complex::a,b(2))
a=(1,2)
b=[(2,3),(3,4)]
if (abs(a-(1,2))>0.001)print *,1001
if (any(abs(b-[(2,3),(3,4)])>0.001))print *,1002
deallocate(a)
b(2)=b(2)+(2,3)
allocate(a,source=b(2))
if (abs(a-(5,7))>0.001)print *,1003
deallocate(b)
allocate(b,source=[a,a,a])
if (any(abs(b-(5,7))>0.001))print *,1003
if (any(ubound(b)/=3))print *,1004
end
call s1
print *,'pass'
end
