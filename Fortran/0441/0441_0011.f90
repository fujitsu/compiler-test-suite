interface sss
subroutine sss()
end subroutine
end interface
call sub(sss)
print *,'pass'
end
subroutine sub(sss)
external sss
call sss()
call xxxxx()
contains
subroutine xxxxx()
call sub2(sss)
end subroutine
end
subroutine sss()
end subroutine
subroutine sub2(sss)
interface
subroutine sss()
end subroutine
end interface
end
