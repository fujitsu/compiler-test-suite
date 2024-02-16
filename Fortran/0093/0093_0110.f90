complex ,allocatable :: cmp1(:)
allocate (cmp1(2))

cmp1(:) = [(2,3),(4,5)]

call sub(cmp1(1:2)%re,cmp1(2)%im)

contains

subroutine sub(dmy1,dmy2)
real::dmy1(:)
real::dmy2

if(SIZE(dmy1) .ne. 2) print*,101
if(SIZEOF(dmy1) .ne. 8) print*,102
if(UBOUND(dmy1,1) .ne. 2) print*,103
if(LBOUND(dmy1,1) .ne. 1) print*,104
if(dmy2 .ne. 5) print*,104
PRINT*,"PASS"

end subroutine sub
end

