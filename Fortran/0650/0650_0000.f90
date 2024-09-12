print *,'pass'
end
subroutine test()
call sub()
contains
subroutine sub()
integer,dimension(10000) :: a1
a1=1;
a1=a1;
end subroutine
end
