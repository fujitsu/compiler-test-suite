module mod
interface
 recursive module function   aaa1(n)  result(nr)
end
end interface
end

submodule (mod) smod
contains
module procedure aaa1
n=n+1
if (n<5)then 
  if (aaa1(n)/=1) print *,201 
end if
nr=1
end 
end


use mod
n=0
if (aaa1(n)/=1) print *,101
print *,'sngg623h : pass'
end

