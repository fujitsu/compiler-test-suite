subroutine s1
real(8)::a(2,3),b(3,4),c(2,4)
a=1; b=2
c=matmul(a,b)
if (any(abs(c-6)>0.001))print *,'error-1'
end
subroutine s2
real(8)::a(3),b(3,4),c(4)
a=1; b=2
c=matmul(a,b)
if (any(abs(c-6)>0.001))print *,'error-2'
end
subroutine s3
real(8)::a(2,3),b(3),c(2)
a=1; b=2
c=matmul(a,b)
if (any(abs(c-6)>0.001))print *,'error-3'
end
call s1
call s2
call s3
print *,'pass'
end
