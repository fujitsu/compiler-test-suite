subroutine s1(i,a,k)
integer a(i)
a(2:)=a(:k)+2
call x(a)
end
integer a(3)
a=[1,2,3]
call s1(3,a,2)
print *,'pass'
end
subroutine x(a)
integer a(3)
if (any(a/=[1,3,4]))print *,101,a
end
