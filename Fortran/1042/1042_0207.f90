integer,allocatable::a(:)
allocate(a(2))
call sub(a)
print *,'pass'
contains
subroutine sub(a)
integer,allocatable,intent(out)::a(:)
if (allocated(a))write(6,*) a
end subroutine
end

