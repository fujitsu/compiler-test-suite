module mod
interface
 recursive module function   aaa1(n)  result(nr)
end
end interface
end

submodule (mod) smod
contains
module procedure aaa1
nr=1
end
subroutine ss
n=1 
  if (aaa1(n)/=1) print *,201 
end 
end


use mod
n=0
if (aaa1(n)/=1) print *,101
print *,'sngg624h : pass'
end

