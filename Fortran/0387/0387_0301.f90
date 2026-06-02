call test01()
call test02()
print *,'pass'
end

module mod
contains
function ifun(i) result(cha)
character(len=i+10) :: cha
cha=repeat("a",i)//"1234567890"
end function   
function ifun1(i) result(cha)
character(len=i+10) :: cha
cha=repeat("b",i)//"1234567890"
end function 
end

subroutine test01()
use mod
procedure(ifun),pointer :: ip
procedure(ifun),pointer :: ip2
procedure(ifun),pointer :: ip3
ip=>ifun
if(ip(3).ne."aaa"//"1234567890") print *,'fail'
ip2=>ifun
if(ip2(3).ne."aaa"//"1234567890") print *,'fail'
ip3=>ifun
if(ip3(3).ne."aaa"//"1234567890") print *,'fail'
call isub()
contains
subroutine isub()
procedure(ifun),pointer :: ip
procedure(ifun),pointer :: ip2
procedure(ifun),pointer :: ip3
ip=>ifun1
if(ip(3).ne."bbb"//"1234567890") print *,'fail'
ip2=>ifun1
if(ip2(3).ne."bbb"//"1234567890") print *,'fail'
ip3=>ifun1
if(ip3(3).ne."bbb"//"1234567890") print *,'fail'
ip=>ifun
if(ip(3).ne."aaa"//"1234567890") print *,'fail'
ip2=>ifun
if(ip2(3).ne."aaa"//"1234567890") print *,'fail'
ip3=>ifun
if(ip3(3).ne."aaa"//"1234567890") print *,'fail'
end subroutine
end


module mod02
contains
subroutine sub1(i)
i=10
end subroutine
subroutine sub2(i)
i=20
end subroutine
end

subroutine test02()
use mod02
procedure(sub1),pointer :: ip
procedure(sub1),pointer :: ip2
procedure(sub1),pointer :: ip3
ip=>sub1
call ip(ii)
if(ii.ne.10) print *,'fail'
ip2=>sub1
call ip2(ii)
if(ii.ne.10) print *,'fail'
ip3=>sub1
call ip3(ii)
if(ii.ne.10) print *,'fail'
call isub()
contains
subroutine isub()
procedure(sub1),pointer :: ip
procedure(sub1),pointer :: ip2
procedure(sub1),pointer :: ip3
ip=>sub2
call ip(ii)
if(ii.ne.20) print *,'fail'
ip2=>sub2
call ip2(ii)
if(ii.ne.20) print *,'fail'
ip3=>sub2
call ip3(ii)
if(ii.ne.20) print *,'fail'
ip=>sub1
call ip(ii)
if(ii.ne.10) print *,'fail'
ip2=>sub1
call ip2(ii)
if(ii.ne.10) print *,'fail'
ip3=>sub1
call ip3(ii)
if(ii.ne.10) print *,'fail'

end subroutine
end


