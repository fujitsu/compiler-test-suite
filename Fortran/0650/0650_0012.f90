call test01()
print *,'pass'
end

subroutine test01()
i=ifun()
if (i.ne.1) print *,'ng'
contains
function ifun()
integer,save:: ii(9999999)
ii=1
ifun=ii(1)
end function
end subroutine
