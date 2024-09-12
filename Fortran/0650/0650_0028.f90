call test01()
print *,'pass'
end

subroutine test01()
call isub()
contains
subroutine isub()
end subroutine
end

subroutine isub()
end subroutine
