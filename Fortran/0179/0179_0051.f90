allocatable :: a
allocate(a)
call  sub1()
call  sub2()
print *,'pass'
contains
subroutine sub1()
deallocate(a)
end subroutine
end
subroutine sub2()
allocatable :: a
if (1.eq.2) deallocate(a)
end subroutine
