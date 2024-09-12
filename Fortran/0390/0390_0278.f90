subroutine s1
integer a(1000)
do concurrent(k=1:1000)
 a(k)=1
end do
if (any(a/=1)) print *,101
end
call s1
print *,'pass'
end
