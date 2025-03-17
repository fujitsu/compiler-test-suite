subroutine s1
real(8)::a(2,3),b(3,4),c(2,4),v(2,4)
integer::s(4)=(/1,2,3,4/)
a=1; b=2;v=3
c=matmul(a,b)+v(:,s)
if (any(abs(c-9)>0.001))print *,'error-1'
end
subroutine s2
real(8)::a(3),b(3,4),c(4),v(4)
integer::s(4)=(/1,2,3,4/)
a=1; b=2;v=3
c=matmul(a,b)+v(s)
if (any(abs(c-9)>0.001))print *,'error-1'
end
subroutine s3
real(8)::a(2,3),b(3),c(2),v(2)
integer::s(2)=(/1,2/)
a=1; b=2;v=3
c=matmul(a,b)+v(s)
if (any(c/=9))write(6,*) "NG"
end
call s1
call s2
call s3
print *,'pass'
end
