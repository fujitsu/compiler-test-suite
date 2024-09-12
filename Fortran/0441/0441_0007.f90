interface
subroutine sss()
end subroutine
end interface
call sub(sss)
print *,'pass'
end
subroutine sub(sss)
call sub2(sss)
call sss()
end
subroutine sss()
end subroutine
subroutine sub2a(sss)
block
interface
subroutine sss()
end subroutine
end interface
end block
entry sub2(sss)
end
