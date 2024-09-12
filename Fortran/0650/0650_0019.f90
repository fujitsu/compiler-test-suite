call test01()
print *,'pass'
end

subroutine test01()
i=ifun()
if (i.ne.1) print *,'ng'
i=ifun1()
if (i.ne.1) print *,'ng'
i=ifun2()
if (i.ne.1) print *,'ng'
contains
function ifun()
equivalence (ii,jj)
ii=10
ifun=jj-9
end function
function ifun1()
save ii
ii=10
ifun1=1
end function
function ifun2()
data ii /1/
ii=10
ifun2=1
end function
end subroutine
