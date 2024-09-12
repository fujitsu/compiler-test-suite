call test01()
print *,'pass'
end

subroutine test01()
integer a(3)
a=ifun01()
a=ifun02()
a=ifun03(3)
a=ifun04(3)
j=3
a=ifun03(j)
a=ifun03(-1+j+1)
a=ifun03(int(j))
a=ifun03(j)
a=ifun03(j)
contains
function ifun04(i) result(ia)
integer ia(i:5)
ia=4
end function
function ifun03(i) result(ia)
integer ia(i)
ia=3
end function
function ifun02() result(ia)
integer ia(3:5)
ia=2
end function
function ifun01() result(ia)
integer ia(3)
ia=1
end function
end 
