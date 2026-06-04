program main
call test01()
call test02()
print *,'pass'
end
subroutine test01()
call sub01(1)
call sub02(2)
contains
 pure subroutine sub01(j)
 integer*4,intent(in) :: j
 end subroutine
 pure recursive subroutine sub02(j)
 integer*4,intent(in) :: j
 end subroutine
end
subroutine test02()
contains
 pure function ifun01()
 ifun01=1
 end function
 pure recursive function ifun02()
 ifun02=1
 end function
 recursive pure function ifun03()
 ifun03=1
 end function
 pure function ifun04() result(ia)
 ia=1
 end function
 pure recursive function ifun05() result(ia)
 ia=1
 end function
 recursive pure function ifun06() result(ia)
 ia=1
 end function
 pure integer*4 function ifun07()
 ifun07=1
 end function
 pure recursive real function ifun08()
 ifun08=1
 end function
 recursive pure complex function ifun09()
 ifun09=1
 end function
 purefunctionifun10() result(ia)
 ia=1
 end function
 purerecursivefunction ifun11() result(ia)
 ia=1
 end function
 recursivepurefunction ifun12() result(ia)
 ia=1
 end function
 pure logical*4 function ifun13()
 ifun13=.true.
 end function
 pure logical*1 function ifun14()
 ifun14=.true.
 end function
 pure character function ifun15()
 ifun15='a'
 end function
 pure double precision function ifun16()
 ifun16=1
 end function
end
