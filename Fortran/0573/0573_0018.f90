integer,pointer::p
allocate(p)
call sub(NULL())
print*,"pass"
contains
subroutine sub(a)
integer,allocatable::a
allocate(a)
a = 10
call sub2(a)
end subroutine
subroutine sub2(b)
integer::b
b = b+10
end subroutine
end
