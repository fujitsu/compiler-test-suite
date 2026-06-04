module mod
interface
 module function   aaa1() 
end
 module function   aaa3() 
end
end interface
end

submodule (mod) smod
interface
 module function   aaa2() 
end
end interface
contains
module procedure aaa3
aaa3=aaa2()
end 
module procedure aaa1
aaa1=1
end 
end

submodule (mod:smod) smod1
contains
module function   aaa2()
  aaa2=aaa1()
end
end

use mod
if (aaa1()/=1) print *,101
if (aaa3()/=1) print *,102
print *,'sngg626h : pass'
end

