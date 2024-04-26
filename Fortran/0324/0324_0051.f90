call test01()
call test02()
call test03()
call test04()
print *,'pass'
end

module mod
contains
pure function if()
if=1
end function
pure function if2()
if2=1
end function
subroutine sub(a)
implicit character(if()) (a ,c)
character(if()) :: c
character(if()) :: b
integer i(10)
if (a.ne.'a') print *,'err1'
b=a
if (b.ne.'a') print *,'err2'
c='a'
if (c.ne.'a') print *,'err3'
r=1
i=1
if (1.eq.2) then
print *,(r,ii=1,1,if2())
print *,(r,ii=1,if2(),1)
print *,(r,ii=if2(),1,1)
print *,(i(ii),ii=1,1,if2())
print *,(i(ii),ii=1,if2(),1)
print *,(i(ii),ii=if2(),1,1)
print *,(i(ii),ii=1,1,1)
print *,(i(if2()),ii=1,1,1)
print *,(if2(),ii=1,1,1)
end if
end subroutine
end

subroutine test01()
use mod
call sub('aa')
end

module mod2
contains
pure function if()
if=1
end function
pure function if2()
if2=1
end function
function sub(a)
implicit character(if()) (a ,c)
character(if()) :: c,sub
character(if()) :: b
if (a.ne.'a') print *,'err1'
b=a
if (b.ne.'a') print *,'err2'
c='a'
if (c.ne.'a') print *,'err3'
sub='a'
end function
end

subroutine test02()
use mod2
character i
i = sub('aa')
i=i
end

module mod3
contains
pure function if()
if=1
end function
pure function if2()
if2=1
end function
character(if()) function sub(a)
implicit character(if()) (a ,c)
character(if()) :: c
character(if()) :: b
if (a.ne.'a') print *,'err1'
b=a
if (b.ne.'a') print *,'err2'
c='a'
if (c.ne.'a') print *,'err3'
sub='a'
end function
end

subroutine test03()
use mod3
character i
i = sub('aa')
i=i
end

module mod4
contains
pure function if()
if=1
end function
pure function if2()
if2=1
end function
function sub(a) result(iii)
implicit character(if()) (a ,c)
character(if()) :: c,iii
character(if()) :: b
if (a.ne.'a') print *,'err1'
b=a
if (b.ne.'a') print *,'err2'
c='a'
if (c.ne.'a') print *,'err3'
iii='a'
end function
end

subroutine test04()
use mod4
character i
i = sub('aa')
i=i
end

