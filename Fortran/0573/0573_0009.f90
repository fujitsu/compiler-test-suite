call sub(NULL())
print*,"pass"
contains
subroutine sub(a)
integer,optional,allocatable::a
if(present(a))then
print*,"pass"
allocate(a)
a = 10
call sub2(a)
endif
end subroutine
subroutine sub2(b)
integer::b
b = b+10
end subroutine
end
