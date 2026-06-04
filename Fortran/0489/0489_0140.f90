character(len=3),allocatable:: coalc(:,:)
character(len=3),pointer:: coptr(:,:)
call sub(NULL(coalc))
call sub(coalc)
call sub2(NULL(coptr))
coptr=>null()
call sub2(coptr)
print*,"pass"
contains
subroutine sub(coalc)
character(len=*),allocatable :: coalc(:,:)
if(allocated(coalc))print*,"101"
ALLOCATE(coalc(3,4))
if(len(coalc).ne.3)print*,"102",len(coalc)
coalc(:,:)= 'a'
if(coalc(1,1).ne. 'a') print *,"121"
end subroutine
subroutine sub2(coalc)
character(len=*),pointer:: coalc(:,:)
if(associated(coalc))print*,"111"
ALLOCATE(coalc(3,4))
if(len(coalc).ne.3)print*,"112",len(coalc)
coalc(:,:)= 'a'
if(coalc(1,1).ne. 'a') print *,"121"
end subroutine
end
