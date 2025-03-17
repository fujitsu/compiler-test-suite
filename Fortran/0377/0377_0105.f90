call test01()
print *,"pass"
end

module mod
enum, bind(c)
 enumerator :: a1=1
 enumerator :: a2
 enumerator :: a3
 enumerator :: a4
 enumerator :: a5=a2
end enum
end 
subroutine test01()
use mod
type ty1
 integer    :: a1=1
 integer    :: a2
 integer    :: a3
 integer    :: a4
 integer    :: a5=a2
end type
if (a1.ne.1) print *,'fail'
if (a3.ne.3) print *,'fail'
if (a4.ne.4) print *,'fail'
if (a5.ne.2) print *,'fail'
end
