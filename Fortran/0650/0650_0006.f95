call test01()
call test02()
call test03()
call test04()
call test11()
call test12()
call test13()
call test14()
call test21()
call test22()
call test23()
call test24()
call test31()
call test32()
call test33()
call test34()
call test35()
call test36()
print *,'pass'
end 

 subroutine sub1(ifun,ians)
 integer ifun,ians
 external ifun
 ians=ifun()
 end subroutine
 subroutine sub2(rfun,ians)
 integer ians
 real rfun
 external rfun
 ians=int(rfun())
 end subroutine
 integer function ifun(); ifun=1 ; end
 real    function rfun(); rfun=10.0 ; end

subroutine test01()
interface sub
 subroutine sub2(rfun,ians)
 integer ians
 real rfun
 external rfun
 end subroutine
 subroutine sub1(ifun,ians)
 integer ifun,ians
 external ifun
 end subroutine
end interface
integer ifun,ians
external ifun
real rfun
external rfun
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end

subroutine test02()
interface sub
 subroutine sub2(rfun,ians)
 integer ians
 real rfun
 external rfun
 end subroutine
 subroutine sub1(ifun,ians)
 integer ians
  interface
   integer function ifun()
   end function
  end interface
 end subroutine
end interface
integer ifun,ians
external ifun
real rfun
external rfun
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end

subroutine test03()
interface sub
 subroutine sub2(rfun,ians)
 integer ians
  interface
   real    function rfun()
   end function
  end interface
 end subroutine
 subroutine sub1(ifun,ians)
 integer ians
  interface
   integer function ifun()
   end function
  end interface
 end subroutine
end interface
integer ifun,ians
external ifun
real rfun
external rfun
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end

subroutine test04()
interface sub
 subroutine sub2(rfun,ians)
 integer ians
  interface
   real    function rfun()
   end function
  end interface
 end subroutine
 subroutine sub1(ifun,ians)
 integer ians,ifun
 external ifun
 end subroutine
end interface
integer ifun,ians
external ifun
real rfun
external rfun
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end

subroutine test11()
interface sub
 subroutine sub2(rfun,ians)
 integer ians
 real rfun
 external rfun
 end subroutine
 subroutine sub1(ifun,ians)
 integer ifun,ians
 external ifun
 end subroutine
end interface
interface 
   integer function ifun()
   end function
   real    function rfun()
   end function
end interface
integer ians
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end

subroutine test12()
interface sub
 subroutine sub2(rfun,ians)
 integer ians
 real rfun
 external rfun
 end subroutine
 subroutine sub1(ifun,ians)
 integer ians
  interface
   integer function ifun()
   end function
  end interface
 end subroutine
end interface
interface 
   integer function ifun()
   end function
   real    function rfun()
   end function
end interface
integer ians
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end

subroutine test13()
interface sub
 subroutine sub2(rfun,ians)
 integer ians
  interface
   real    function rfun()
   end function
  end interface
 end subroutine
 subroutine sub1(ifun,ians)
 integer ians
  interface
   integer function ifun()
   end function
  end interface
 end subroutine
end interface
interface 
   integer function ifun()
   end function
   real    function rfun()
   end function
end interface
integer ians
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end

subroutine test14()
interface sub
 subroutine sub2(rfun,ians)
 integer ians
  interface
   real    function rfun()
   end function
  end interface
 end subroutine
 subroutine sub1(ifun,ians)
 integer ians,ifun
 external ifun
 end subroutine
end interface
interface 
   integer function ifun()
   end function
   real    function rfun()
   end function
end interface
integer ians
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end

module mod21
interface sub
 subroutine sub2(rfun,ians)
 integer ians
 real rfun
 external rfun
 end subroutine
 subroutine sub1(ifun,ians)
 integer ifun,ians
 external ifun
 end subroutine
end interface
end
subroutine test21()
use mod21
interface 
   integer function ifun()
   end function
   real    function rfun()
   end function
end interface
integer ians
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end

module mod22
interface sub
 subroutine sub2(rfun,ians)
 integer ians
 real rfun
 external rfun
 end subroutine
 subroutine sub1(ifun,ians)
 integer ians
  interface
   integer function ifun()
   end function
  end interface
 end subroutine
end interface
end
subroutine test22()
use mod22
interface 
   integer function ifun()
   end function
   real    function rfun()
   end function
end interface
integer ians
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end

module mod23
interface sub
 subroutine sub2(rfun,ians)
 integer ians
  interface
   real    function rfun()
   end function
  end interface
 end subroutine
 subroutine sub1(ifun,ians)
 integer ians
  interface
   integer function ifun()
   end function
  end interface
 end subroutine
end interface
end
subroutine test23()
use mod23
interface 
   integer function ifun()
   end function
   real    function rfun()
   end function
end interface
integer ians
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end

module mod24
interface sub
 subroutine sub2(rfun,ians)
 integer ians
  interface
   real    function rfun()
   end function
  end interface
 end subroutine
 subroutine sub1(ifun,ians)
 integer ians,ifun
 external ifun
 end subroutine
end interface
end
subroutine test24()
use mod24
interface 
   integer function ifun()
   end function
   real    function rfun()
   end function
end interface
integer ians
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end

module mod31
interface sub
module procedure sub2,sub1
end interface
contains
 subroutine sub2(rfun,ians)
 integer ians
 real rfun
 external rfun
 ians=int(rfun())
 end subroutine
 subroutine sub1(ifun,ians)
 integer ifun,ians
 external ifun
 ians=ifun()
 end subroutine
end
subroutine test31()
use mod31
interface 
   integer function ifun()
   end function
   real    function rfun()
   end function
end interface
integer ians
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end

module mod32
interface sub
module procedure sub2,sub1
end interface
contains
 subroutine sub2(rfun,ians)
 integer ians
 real rfun
 external rfun
 ians=int(rfun())
 end subroutine
 subroutine sub1(ifun,ians)
 integer ians
  interface
   integer function ifun()
   end function
  end interface
 ians=ifun()
 end subroutine
end
subroutine test32()
use mod32
interface 
   integer function ifun()
   end function
   real    function rfun()
   end function
end interface
integer ians
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end

module mod33
interface sub
module procedure sub2,sub1
end interface
contains
 subroutine sub2(rfun,ians)
 integer ians
  interface
   real    function rfun()
   end function
  end interface
 ians=int(rfun())
 end subroutine
 subroutine sub1(ifun,ians)
 integer ians
  interface
   integer function ifun()
   end function
  end interface
 ians=ifun()
 end subroutine
end
subroutine test33()
use mod33
interface 
   integer function ifun()
   end function
   real    function rfun()
   end function
end interface
integer ians
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end

module mod34
interface sub
module procedure sub2,sub1
end interface
contains
 subroutine sub2(rfun,ians)
 integer ians
  interface
   real    function rfun()
   end function
  end interface
 ians=int(rfun())
 end subroutine
 subroutine sub1(ifun,ians)
 integer ians,ifun
 external ifun
 ians=ifun()
 end subroutine
end
subroutine test34()
use mod34
interface 
   integer function ifun()
   end function
   real    function rfun()
   end function
end interface
integer ians
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end

module mod35
interface sub
module procedure sub2,sub1
end interface
contains
 subroutine sub2(rfun,ians)
 integer ians
 ians=int(rfun())
 end subroutine
 subroutine sub1(ifun,ians)
 integer ians
 ians=ifun()
 end subroutine
end
subroutine test35()
use mod35
interface
   integer function ifun()
   end function
   real    function rfun()
   end function
end interface
integer ians
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end
module mod36
interface sub
module procedure sub2,sub1
end interface
contains
 subroutine sub2(rfun,ians)
 integer ians
 real  rfun
 ians=int(rfun())
 end subroutine
 subroutine sub1(ifun,ians)
 integer ians,ifun
 ians=ifun()
 end subroutine
end
subroutine test36()
use mod36
interface
   integer function ifun()
   end function
   real    function rfun()
   end function
end interface
integer ians
call sub(ifun,ians)
if (ians.ne.1) call errtra
call sub(rfun,ians)
if (ians.ne.10) call errtra
end
