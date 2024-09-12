print *,'pass'
end
subroutine test()
call isub()
contains
subroutine isub()
data i/1/
i=1
i=i
end subroutine
end
