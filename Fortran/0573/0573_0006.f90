call sub(NULL())
print*,"pass"
contains
subroutine sub(a)
integer,allocatable,intent(in)::a
if(allocated(a).neqv..false.)print*,"101"
end subroutine
end
