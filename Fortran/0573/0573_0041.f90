character(:),allocatable ::kk(:)
call sub2(NULL(kk))
print*,"Pass"
contains
subroutine sub2(aa)
character(len=2),allocatable :: aa(:)
if(allocated(aa).neqv..false.)print*,"101"
if(len(aa).ne.2)print*,"103"
allocate(aa(5))
end subroutine
end

