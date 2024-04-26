subroutine s
integer,target:: n1(3)
integer,pointer:: n2(:)
 n1=(/1,2,3/)
 k=2
n2=>n1(1:3:2)
call ss(n2,k)
call ss(n2,k)
contains
subroutine ss(n1,n2)
integer n1(2),n2
if (n1(1)/=1)print *,101,n1(1)
if (n1(2)/=3)print *,102,n1(2)
if (n2/=2)print *,103,n2
end  subroutine
end
call s
print *,'pass'
end
