module mod
interface
 module function   aaa1() 
end
end interface
end

submodule (mod) smod
contains
subroutine sss()
        print *,aaa1()
end
module procedure aaa1
aaa1=1
end 
end


use mod
if (aaa1()/=1) print *,101
print *,'sngg622h : pass'
end

