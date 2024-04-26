subroutine ss
parameter(n=3,m=1)
 integer :: a1(n), a2(n,m,m)
 integer:: vs(3)=[1,2,3],aa(6)
a2=1
a1=1

aa=[  a2(vs,m,m)  ,   a1+a1 ] 
if (any(aa/=[1,1,1,2,2,2])) print *,101
end subroutine
call ss
print *,'pass'
end
