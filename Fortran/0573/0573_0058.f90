character(len=4),allocatable::ch(:,:)
call sub(NULL(ch))
print*,"pass"
contains
subroutine sub(a)
character(len=4),allocatable::a(:,:)
if(rank(a).ne.2)print*,"101"
end subroutine
end
