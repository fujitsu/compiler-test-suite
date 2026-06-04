call test()

end

subroutine test()
interface
 function ifun() result(i)
 end function
end interface
pointer :: ip
integer,external :: ip
ip=>ifun
i=ip()
if (i.ne.1) print *,'fail'

print *,'pass'

end subroutine

function ifun() result(i)
 i = 1
end function
