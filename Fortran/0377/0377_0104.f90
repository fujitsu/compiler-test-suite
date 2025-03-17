call test01()
call test02()
call test03()
call test04()
print *,"pass"
end

subroutine test01()
enum, bind(c)
 enumerator :: a1=1
 enumerator :: a2
 enumerator :: a3
 enumerator :: a4
 enumerator :: a5=a2
end enum
if (a1.ne.1) print *,'fail'
if (a3.ne.3) print *,'fail'
if (a4.ne.4) print *,'fail'
if (a5.ne.2) print *,'fail'
end

subroutine test02()
enum, bind(c)
 enumerator :: a1=1
 enumerator :: a2
 enumerator :: a3
 enumerator :: a4
 enumerator :: a5=a2
end enum
call sub()
call sub2()
contains
subroutine sub()
if (a1.ne.1) print *,'fail'
if (a3.ne.3) print *,'fail'
if (a4.ne.4) print *,'fail'
if (a5.ne.2) print *,'fail'
end subroutine
subroutine sub2()
enum, bind(c)
 enumerator :: a1=2
 enumerator :: a3
 enumerator :: a4
 enumerator :: a5=a2
end enum
if (a1.ne.2) print *,'fail'
if (a3.ne.3) print *,'fail'
if (a4.ne.4) print *,'fail'
if (a5.ne.2) print *,'fail'
end subroutine

end

module mod
enum, bind(c)
 enumerator :: a1=1
 enumerator :: a2
 enumerator :: a3
 enumerator :: a4
 enumerator :: a5=a2
end enum
end module
subroutine test03()
use  mod
if (a1.ne.1) print *,'fail'
if (a3.ne.3) print *,'fail'
if (a4.ne.4) print *,'fail'
if (a5.ne.2) print *,'fail'
end

subroutine test04()
use  mod,aa=>a5
if (a1.ne.1) print *,'fail'
if (a3.ne.3) print *,'fail'
if (a4.ne.4) print *,'fail'
if (aa.ne.2) print *,'fail'
end

subroutine test05()
use  mod,aa=>a5
use  mod
enum, bind(c)
 enumerator :: b1=1
 enumerator :: b2
 enumerator :: b3
 enumerator :: b4
 enumerator :: a5=a2
end enum

if (a1.ne.1) print *,'fail'
if (a3.ne.3) print *,'fail'
if (a4.ne.4) print *,'fail'
if (aa.ne.2) print *,'fail'
end

