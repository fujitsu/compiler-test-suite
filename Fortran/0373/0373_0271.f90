integer,allocatable,dimension(:)::a1,a2,a3,a4,a5
allocate(a1(1),a2(1))
allocate(a3(1),a4(1),a5(1))
deallocate(a1,a2,a3,a4,a5)
call sub1
call sub2
print *,'ok'
end
subroutine sub1
integer,allocatable,dimension(:)::a1,a2,a3,a4,a5
allocate(a1(1),a2(1))
allocate(a3(1),a4(1),a5(1))
deallocate(a1,a2,a3,a4,a5)
end subroutine
subroutine sub2
integer,allocatable,dimension(:)::a1,a2,a3,a4,a5
allocate(a1(1),a2(1))
allocate(a3(1),a4(1),a5(1))
end subroutine
