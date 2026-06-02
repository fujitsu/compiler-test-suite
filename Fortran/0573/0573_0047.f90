integer(kind=8),allocatable::ch
call sub(NULL(ch))
print*,"pass"
contains
subroutine sub(a)
integer(kind=8),allocatable::a
if(kind(a).ne.8)print*,"101"
end subroutine
end
