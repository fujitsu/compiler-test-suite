interface
subroutine sss()
end subroutine
end interface
call sub(sss)
print *,'pass'
end
subroutine sub(sss)
call sss()
end
subroutine sss()
end subroutine
