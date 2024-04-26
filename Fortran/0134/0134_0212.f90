subroutine s
real(8)::a(3,3)=1.,c(3,3)
real(4)::b(3,3)=2.
c=      matmul(a,b)
if (any(abs(c-6)>0.0001))print *,101,c
end
call s
print *,'pass'
end
