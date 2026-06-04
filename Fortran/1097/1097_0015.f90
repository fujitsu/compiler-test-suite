module mod
type tya
integer :: ii
end type
!private
interface
 module function   aaa1() RESULT(aaa)
type(tya) :: aaa
end
end interface
end

submodule (mod) smod
contains
module procedure aaa1
aaa%ii=1
end 
subroutine sss()
        if (1.eq.2) print *,aaa1()
end
end


use mod
if (1.eq.2) print *,aaa1()
print *,'sngg617h : pass'
end

