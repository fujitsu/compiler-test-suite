subroutine t
integer n(2)
n(2)=2
call s(n(1),n(1),2)
contains
subroutine s(n1,n2,m)
integer,target:: n1(*),n2(*)
do k=2,m
n1(k)=1
if (n2(2)/=1) print *,n2(2),104
end do
write(1,*) n1(2)
end subroutine
end
call t
print *,'pass'
end


