module mod
interface
 module function   aaa1() RESULT(aaa)
end
end interface
end

submodule (mod) smod
contains
module procedure aaa1
aaa=1
end 
subroutine sss()
        if (1.eq.2) print *,aaa1()
end
end


use mod
if (1.eq.2) print *,aaa1()
print *,'sngg618h : pass'
end

