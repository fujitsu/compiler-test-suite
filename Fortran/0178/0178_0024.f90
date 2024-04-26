allocatable :: a
call  sub2()
print *,'pass'
contains
subroutine sub1()
allocate(a)
end subroutine
end
subroutine sub2()
allocatable :: a
allocate(a)
end subroutine
