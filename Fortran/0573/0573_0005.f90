call sub(NULL())
print*,"pass"
contains
subroutine sub(a)
integer,optional,allocatable::a
if(present(a))then
allocate(a)
a =10
endif
end subroutine
end
