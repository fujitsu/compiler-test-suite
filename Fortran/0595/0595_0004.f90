integer::k(5)=[1,2,3,4,5]
call sub(k,k)
contains
subroutine sub(k,k2)
integer::k(..)
integer::k2(:)
integer::l
if(kind(rank(k)) .ne. kind(kind(l)))print*,"101"
if(kind(rank(k2)) .ne. kind(kind(l)))print*,"102"
if(rank(k).ne.1)print*,"103"
if(rank(k2).ne.1)print*,"104"
print*,"PASS"
end
end


