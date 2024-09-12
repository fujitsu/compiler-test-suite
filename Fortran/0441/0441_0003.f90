interface
subroutine sss()
end subroutine
end interface
call sub(sss)
print *,'pass'
end
subroutine sub(sss)
interface
subroutine sss()
end subroutine
end interface
end
subroutine sss()
end subroutine
