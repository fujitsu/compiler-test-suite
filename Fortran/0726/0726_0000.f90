integer a(10)
a=999
call test01(a,10)
if (all(a.ne.10)) write(6,*) "NG"
call test02(a,10)
if (all(a.ne.20)) write(6,*) "NG"
call test03(a)
if (all(a.ne.10)) write(6,*) "NG"
print *,'pass'
end

subroutine test03(i)
interface
pure function ifun0()
end function
end interface
integer i(ifun0())
i=size(i)
end subroutine
pure function ifun0()
ifun0=10
end function

subroutine test02(i,j)
interface
pure function ifun(ii)
intent(in) :: ii
end function
end interface
integer i(ifun(10))
i=size(i)+j
end subroutine

subroutine test01(i,j)
interface 
pure function ifun(ii)
intent(in) :: ii
end function
end interface
integer i(ifun(j))
i=size(i)
end subroutine

pure function ifun(ii)
intent(in) :: ii
ifun=ii
end function
