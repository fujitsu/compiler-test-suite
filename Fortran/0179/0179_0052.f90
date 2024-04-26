pointer     :: a
allocate(a) 
call  sub1()
call  sub2()
print *,'pass'
contains
subroutine sub1()
nullify(a)
end subroutine
end
subroutine sub2()
pointer     :: a
if (1.eq.2) nullify(a)
end subroutine
