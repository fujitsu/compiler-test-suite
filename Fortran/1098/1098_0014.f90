module mod
interface
module function   aaa1()
end
module function   aaa2()
end
end interface
end

submodule (mod) smod
contains
module procedure aaa1
aaa1=aaa2()
end 
module procedure aaa2
aaa2=1
end 
end

use mod
if (aaa1()/=1) print *,101
print *,'sngg426h : pass'
end

