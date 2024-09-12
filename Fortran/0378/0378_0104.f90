module mod1
integer::k=0
contains
subroutine mod_test03()
character ::c
c=c_fun2(k)
if (c/='a')print *,'error-1',c
end subroutine
subroutine mod_test04()
character ::c
c=c_fun2(k)
if (c/='a')print *,'error-1',c
end subroutine
recursive function c_fun1(k) result(ccc)
 character :: ccc
character ::c
entry c_fun2(k) result(ccc) bind(c)
 ccc='a'
 k=k+1
 if (k>=3) then
  c=c_fun2(k)
  if (c/='a')print *,'error-1',c
 endif
 end function
subroutine mod_test01()
character ::c
c=c_fun2(k)
if (c/='a')print *,'error-1',c
end subroutine
subroutine mod_test02()
character ::c
c=c_fun2(k)
if (c/='a')print *,'error-1',c
end subroutine
end 
use mod1
character ::c
call mod_test01()
 k=0
call mod_test02()
 k=0
call mod_test03()
 k=0
call mod_test04()
 k=0
c=c_fun2(k)
if (c/='a')print *,'error-1',c

print *,'pass'
end 
