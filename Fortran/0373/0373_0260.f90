subroutine sub1
integer,allocatable,dimension(:)::a1,a2
allocate(a1(1),a2(1))
deallocate(a1,a2)
end subroutine
call sub1
print *,'ok'
end

