print *,'pass'
end
subroutine test()
call isub()
contains
recursive subroutine isub()
end subroutine
end
