integer ::a
a=3
call ss(a)

contains
subroutine ss(d)
integer :: d

integer :: oo(d)

d=d+1
oo=2

block
integer :: ii(d)
if(size(ii) == (size(oo)+1)) print*,'pass'
ii=oo(2)
if(all(ii/=2)) print*,101,ii,oo
end block
end subroutine
end
