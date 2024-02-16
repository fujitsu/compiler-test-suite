subroutine sub(i,x)
integer a(i),x(2)
a(1)=1
a(2)=2
x(2)=a(2)
x(1)=a(1)
end
subroutine s1
integer x(2)
do k=1,10000
call sub(100,x)
if (any(x/=[1,2])) print *,101,x
end do
end
call s1
print *,'pass'
end
