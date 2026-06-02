call sub(NULL())
print*,"pass"
contains
subroutine sub(a)
integer,allocatable::a(:)
allocate(a(1))
a = 10
if(a(1).ne.10)print*,"101"
end subroutine
end
