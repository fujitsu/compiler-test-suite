call test1()
print *,'pass'
end      

module mod
end 
subroutine test1()
integer j(8000)
call sub_ng01()
call sub_ng02()
call sub_ok01()
call sub_ok02()
contains 
subroutine   sub_ng01()
integer i(8000)
i=1
i=i
end subroutine
subroutine   sub_ok01()
j=1
j=j
end subroutine
subroutine   sub_ng02()
integer i(2000)
i=1
i=i
end subroutine
subroutine   sub_ok02()
integer i(10)
i=1
i=i
end subroutine
end subroutine
