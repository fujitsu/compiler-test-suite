interface
subroutine s(a,b)
integer a
optional :: b
end subroutine
end interface
call s(1)
print *,'pass'
end
subroutine s(a,b)
integer a
optional :: b
end
