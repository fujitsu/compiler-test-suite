integer::coa(4)
integer:: b(4),c(4)
do i=1,4
 coa(i)=i
 b(i)=5-i
end do
c=coa(b)
if (any(c/=[4,3,2,1])) print *,101,c
print *,'pass'
end
