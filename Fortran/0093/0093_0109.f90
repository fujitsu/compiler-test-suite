complex :: cmp(4)
cmp = (2,3)
cmp(1) = (4,5)
cmp(4) = (6,7)
call sub(cmp(2:3)%re,cmp(1:4:3)%im,cmp(4)%im,cmp(1)%im)

contains
subroutine sub(dmy1,dmy2,dmy3,dmy4)
real ::dmy1(:)
real ::dmy2(:)
real ::dmy3
real ::dmy4
if(any(dmy1 .ne. 2)) print*,"101"
if(any(dmy2 .ne. [5,7])) print*,"102"
if(size(dmy1) .ne. 2) print*,"103"
if(dmy3 .ne. 7) print*,104
if(dmy4 .ne. 5) print*,104
print*,"Pass"

end subroutine
end
