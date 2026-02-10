
integer,allocatable::a
call sub(NULL())
call sub(NULL(a))
print*,"pass"
contains
subroutine sub(a)
integer,allocatable::a
allocate(a)
a = 10
call sub2(a)
if(allocated(a))then
if(a.ne.20)print*,"103"
deallocate(a)
else
print*,"101"
endif
end subroutine
subroutine sub2(b)
integer::b
b = b+10
end subroutine
end
