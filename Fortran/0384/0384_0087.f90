call test01()
call test02()
call test03()
call test04()
print *,"pass"
end

subroutine test04()
integer :: arr(100)
arr=[integer(kind=4)::([real::10.0],i=1,100)]
arr=[integer(kind=4)::(i,i=1,99),[real::(10.0)]]
arr=[integer(kind=4)::(i*10,i=1,1 ),[real::1,(10.0,i=1,97),1]]
arr=[integer(kind=4)::(i*10,i=1,1 ),[real::(10.0,i=1,90),(10.0,i=1,9)]]
arr=[integer(kind=4)::(i*10,i=1,1 ),[real::((10.0,i=1,99),j=1,1)]]
arr=[integer(kind=4)::(i*10,i=1,1 ),[real::(10.0,i=1,99)]]
if (arr(1).ne.10) print *,'fail'
end subroutine
subroutine test01()
integer ,parameter :: ipp=kind((/1/))
if (ipp .ne. 4) print *,'fail'
if (kind((/1/)) .ne. 4) print *,'fail'
if (kind((/integer(4)::1_1/)) .ne. 4) print *,'fail'
if (kind((/integer(2)::1_1/)) .ne. 2) print *,'fail'
if (kind((/integer(1)::1_1/)) .ne. 1) print *,'fail'
if (kind((/integer::1_1/)) .ne. 4) print *,'fail'
end subroutine

subroutine test02()
interface
function ifun()
integer(4) :: ifun
end function
end interface
procedure(integer(4)) ,pointer :: ip
ip=>ifun
end subroutine
function ifun()
integer(4) :: ifun
ifun=1
end function

subroutine test03()
integer(1) :: arr(1)
j=1234567
arr=(/integer(1) :: j/)
if (arr(1).eq.1234567) print *,'fail'
end subroutine
