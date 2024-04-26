allocatable :: a
call  sub1()
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
