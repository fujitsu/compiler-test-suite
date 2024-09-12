call test01()
print *,'pass'
end

subroutine test01()
type ty1
 integer ii
end type
type(ty1) :: is
integer ii(10)
target :: itt
i=ifun()
if (i.ne.1) print *,'ng1'
ii=jfun()
if (any(ii.ne.(/(i,i=1,10)/))) print *,'ng2'
is=kfun()
if (is%ii.ne.1) print *,'ng3'
contains
function ifun()
pointer ifun
ifun=>itt
itt=1
end function
function jfun() result(jjj)
integer jjj(10)
jjj=(/(i,i=1,10)/)
end function
function kfun()
type(ty1) :: kfun
kfun%ii=1
end function
end subroutine
