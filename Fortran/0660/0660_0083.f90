program main
call test01()
print *,'pass'
end

subroutine test01()
integer a(10)
a=1
call sub01(a)
call sub01(0+a)
call sub01(-a)
call sub01(+a)
call sub01(+(a))
call sub01((a))
end subroutine
subroutine sub01(b)
integer b(10),c(10)
c=b
end subroutine
