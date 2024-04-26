interface
subroutine sub(a,b)
integer a
optional :: b
end subroutine
end interface
call sub(1)
print *,'pass'
end
subroutine sub(a,b)
integer a
optional :: b
end
