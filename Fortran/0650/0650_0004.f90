print *,'pass'
end
subroutine test()
integer a(10)
call isub(a(1:10))
contains
subroutine isub(a)
integer a(10),b(10)
b=a
b=b
end subroutine
end
