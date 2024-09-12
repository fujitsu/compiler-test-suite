module mod 
interface 
subroutine sss(aaa) bind(c)
logical(4) ::aaa
end subroutine
end interface
end
use mod
print *,'pass'
end
