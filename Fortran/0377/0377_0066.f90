call sub1()
call sub2()

print *,'pass'

end

subroutine sub1()
 integer,allocatable :: int01
 allocate(int01)
end subroutine

subroutine sub2()
 integer,allocatable :: int01(:)
 allocate(int01(1))
end subroutine
