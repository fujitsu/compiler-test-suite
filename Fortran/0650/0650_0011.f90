call test01()
print *,'pass'
end

subroutine test01()
i=ifun()
if (i.ne.1) print *,'ng'
contains
function ifun()
i=1
i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i;
i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i;
i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i;
i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i;
i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i;
i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i;
i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i; i=i;
ifun=1
end function
end subroutine
