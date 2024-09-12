integer,parameter::a(3)=(/1,2,3/)
call s1(a)
print *,'pass'
end
subroutine s1(a)
integer:: a(3)
if (any(a/=(/1,2,3/)))print *,1001
call s2(a(1:3:2))
if (any(a/=(/1,2,3/)))print *,1002
end
subroutine s2(a)
integer a(2)
if (any(a/=(/1,3/)))print *,1003
end

