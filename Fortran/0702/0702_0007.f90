call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub06()
print *,'pass'
end

subroutine sub01()
if (lbound(int(ifun01()),1) .ne. 1) call errtra
if (ubound(int(ifun01()),1) .ne. 10) call errtra
contains
function ifun01() result(ia)
integer,dimension(1:10) :: ia
ia=1; end function 
end

subroutine sub02()
integer*1  ians(10)
ians=ifun(10)
contains
function ifun(i) result(ia)
integer ia(i)
ia=(/(j,j=1,i)/)
end function
end
subroutine sub03()
integer*1  ians(100)
ians=ifun(100)
contains
function ifun(i) result(ia)
integer ia(i)
ia=(/(j,j=1,i)/)
end function
end
subroutine sub04()
integer*1  ians(1000)
ians=ifun(1000)
contains
function ifun(i) result(ia)
integer ia(i)
ia=(/(j,j=1,i)/)
end function
end
subroutine sub05()
integer*1  ians(10000)
ians=ifun(10000)
contains
function ifun(i) result(ia)
integer ia(i)
ia=(/(j,j=1,i)/)
end function
end
subroutine sub06()
integer*1  ians(100000)
ians=ifun(100000)
contains
function ifun(i) result(ia)
integer ia(i)
ia=(/(j,j=1,i)/)
end function
end
