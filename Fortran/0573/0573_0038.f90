character(len=4),allocatable::ch
call sub(NULL(ch))
print*,"pass"
contains
subroutine sub(a)
character(len=4),allocatable::a
if(len(a).ne.4)print*,"101"
end subroutine
end
