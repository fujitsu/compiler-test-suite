subroutine s1
real(8)::a(2),b1(2,2),b2(2,2),c(2)
integer::v(2)
v=(/1,2/)
b1=1.0
b2=1.0
c=1.0
a=sum(b1(v,1:2)+b2(v,1:2),dim=2)+c
if (any(abs(a-5)>0.00001))print *,a
end
call s1
print *,'pass'
end
