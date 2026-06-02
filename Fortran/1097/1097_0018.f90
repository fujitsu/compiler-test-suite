module mod
interface
 module function   aaa1() RESULT(aaa)
end
end interface
end

submodule (mod) smod
integer::x=0
contains
module procedure aaa1
call sss
aaa=1
end 
subroutine sss()
        if (1.eq.2) print *,aaa1()
end
end


use mod
if (aaa1()/=1) print *,101
print *,'sngg620h : pass'
end

