integer a1(10)
call subb1(a1)
print *,'pass'
end

subroutine sub(a)
integer a(*)
end subroutine

subroutine subb1(a)
integer a(*)
a(1:10)=1
call sub(a(-1:10:-1))
end subroutine
