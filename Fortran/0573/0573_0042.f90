character(:),allocatable ::kk
call sub2(NULL(kk))
print*,"Pass"
contains
subroutine sub2(aa)
character(:),allocatable :: aa
if(allocated(aa))print*,"102"
end subroutine
end

