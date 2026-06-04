module mod
interface
module pure elemental function   aaa1(a)
integer :: a
intent(in) :: a
end
end interface
end

submodule (mod) smod
contains
module procedure aaa1
aaa1=a
end 
end

use mod
integer :: a(10)
a=1
if (1.eq.2) print *,aaa1(a)
print *,'sngg384h : pass'
end

