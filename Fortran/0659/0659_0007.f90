call test01()
call test02()
call test03()
call test04()
print *,'pass'
end

subroutine test01()
integer(kind=8) , parameter :: ip01 = max(a1=1,a2=2)
integer(kind=8) , parameter :: ip02 = max(a2=1,a1=2)
integer(kind=8) , parameter :: ip03 = max(a2=2,a1=1,a3=3)
integer(kind=8) , parameter :: ip04 = max(a1=1,a3=3,a2=2)
if (ip01 .ne. 2) print *,'err'
if (ip02 .ne. 2) print *,'err'
if (ip03 .ne. 3) print *,'err'
if (ip04 .ne. 3) print *,'err'
end subroutine

subroutine test02()
integer(kind=8) , parameter :: ip01 = min(a1=4,a2=2)
integer(kind=8) , parameter :: ip02 = min(a2=4,a1=2)
integer(kind=8) , parameter :: ip03 = min(a2=5,a1=4,a3=3)
integer(kind=8) , parameter :: ip04 = min(a1=4,a3=3,a2=5)
if (ip01 .ne. 2) print *,'err'
if (ip02 .ne. 2) print *,'err'
if (ip03 .ne. 3) print *,'err'
if (ip04 .ne. 3) print *,'err'
end subroutine

subroutine test03()
integer(kind=8) , parameter :: ip01 = max(1,a2=2)
integer(kind=8) , parameter :: ip02 = max(1,a2=2)
integer(kind=8) , parameter :: ip03 = max(2,a2=1,a3=3)
integer(kind=8) , parameter :: ip04 = max(1,3,a3=2)
if (ip01 .ne. 2) print *,'err'
if (ip02 .ne. 2) print *,'err'
if (ip03 .ne. 3) print *,'err'
if (ip04 .ne. 3) print *,'err'
end subroutine

subroutine test04()
integer(kind=8) , parameter :: ip01 = min(4,a2=2)
integer(kind=8) , parameter :: ip02 = min(4,a2=2)
integer(kind=8) , parameter :: ip03 = min(5,a2=4,a3=3)
integer(kind=8) , parameter :: ip04 = min(4,3,a3=5)
if (ip01 .ne. 2) print *,'err'
if (ip02 .ne. 2) print *,'err'
if (ip03 .ne. 3) print *,'err'
if (ip04 .ne. 3) print *,'err'
end subroutine
