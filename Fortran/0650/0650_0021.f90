call test1()
print *,'pass'
end      

module mod
end 
subroutine test1()
allocatable a(:)
integer iii
call sub01()
call sub02()
call sub03()
call sub04()
call sub05()
call sub06()
call sub07()
call sub08()
call sub09()
call sub10()
call sub11()
call sub12()
call sub13()
if (1.eq.2) print *,sub14()
if (1.eq.2) print *,sub15()
contains 
subroutine   sub01()
save
i=1 ;i=i
end subroutine
subroutine   sub02()
save i
i=1 ;i=i
end subroutine
subroutine   sub03()
allocate (a(10))
a=1
end subroutine
subroutine   sub04()
deallocate (a)
end subroutine
subroutine   sub05()
assign 10 to i
   goto i
10 iii=1
iii=iii
end subroutine
subroutine   sub06()
i=1
if (1.eq.2) goto i(10,10,10)
10 i=i
end subroutine
subroutine   sub07()
if (1.eq.2) print *,'aaaaa'
end subroutine
subroutine   sub08()
return 10
end subroutine
subroutine   sub09()
pointer ip
if (1.eq.2) nullify (ip)
end subroutine
subroutine   sub10()
forall (i=1:2)
end forall
end subroutine
subroutine   sub11()
use mod
end subroutine
subroutine   sub12(i)
optional i
end subroutine
recursive subroutine   sub13()
end subroutine
function     sub14()
pointer sub14
sub14=1
end function   
function     sub15()
type ty1
 integer i
end type
type (ty1) sub15
sub15%i=1
end function   
end subroutine
