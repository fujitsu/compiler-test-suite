use mod
call sub(sss)
print *,'pass'
end
module mod
interface
subroutine sss()
end subroutine
end interface
contains
subroutine sub(sss)
call sub2(sss)
call sss()
end subroutine
subroutine sub2(sss)
interface
subroutine sss()
end subroutine
end interface
end subroutine
end
subroutine sss()
end subroutine
