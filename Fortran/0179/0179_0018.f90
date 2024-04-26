call sub(fint)
print *,'pass'
end
subroutine sub(int)
interface
function func()
pointer :: func
end function
end interface
external:: int
end
