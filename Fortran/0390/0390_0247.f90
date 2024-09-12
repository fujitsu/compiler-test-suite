module mod
  contains
   character(1) function fun01() result(r) bind(c)
    r='1'
   end function
   character(1) function fun02() result(r)
    r='1'
   end function
   subroutine sub
    character c1
    c1=fun01()
    if (c1/='1') print *,101
    if (fun01()/='1') print *,102
    c1=fun02()
    if (c1/='1') print *,201
    if (fun02()/='1') print *,202
    c1=fun11()
    if (c1/='1') print *,111
    if (fun11()/='1') print *,112
    c1=fun12()
    if (c1/='1') print *,211
    if (fun12()/='1') print *,212
   end subroutine
   character(1) function fun11() result(r) bind(c)
    r='1'
   end function
   character(1) function fun12() result(r) 
    r='1'
   end function
end
use mod
call sub
print *,'pass'
end
    
    
    
