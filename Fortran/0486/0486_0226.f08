subroutine s1(a,k)
integer:: a(*)
integer(8):: addr
addr=loc(a)
call ss(a(1:3:k),k)
contains
subroutine ss(x,n)
integer x(*)
if (x(1)/=1) print *,101
if (n==1) then
if (x(2)/=2) print *,102
if (x(3)/=3) print *,103
else
if (x(2)/=3) print *,302
endif
end subroutine
end
subroutine ss
integer:: a(3)
a=[1,2,3]
call s1(a,1)
a=[1,0,3]
call s1(a,2)
end
do n=1,10
call ss
end do
print *,'pass'
end
