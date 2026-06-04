character(:),allocatable ::kk(:)
call sub2(NULL(kk))
print*,"Pass"
contains
subroutine sub2(aa)
character,allocatable :: aa(:)
if(allocated(aa).neqv..false.)print*,"101"
allocate(aa(5))
end subroutine
end

