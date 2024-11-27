 call test01()
 call test02()
 call test03()
 call test04()
 call test05()
 call test06()
 call test07()
 call test08()
 call test09()
 call test10()
 print *,'pass'
 end
 module mod01
 interface aa
  module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 integer a,b(10),c,d(10),e,f(10)
 equivalence (a,b(9))
 equivalence (c,d(5))
 equivalence (e,c)
 equivalence (e,f(4))
 equivalence (f(3),a)
 f=(/(i,i=1,10)/)
 if (a.ne.3) write(6,*) "NG"
 if (e.ne.4) write(6,*) "NG"
 if (c.ne.4) write(6,*) "NG"
 if (d(5).ne.4) write(6,*) "NG"
 if (b(8).ne.2) write(6,*) "NG"
 if (d(3).ne.2) write(6,*) "NG"
 end subroutine
 end module
 subroutine test01()
 use mod01
 call mod_sub()
 end
 module mod02
 interface aa
  module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 integer a,b(10),c,d(10),e,f(10)
 equivalence (e,c)
 equivalence (e,f(4))
 equivalence (c,d(5))
 equivalence (a,b(9))
 equivalence (f(3),a)
 f=(/(i,i=1,10)/)
 if (a.ne.3) write(6,*) "NG"
 if (e.ne.4) write(6,*) "NG"
 if (c.ne.4) write(6,*) "NG"
 if (d(5).ne.4) write(6,*) "NG"
 if (b(8).ne.2) write(6,*) "NG"
 if (d(3).ne.2) write(6,*) "NG"
 end subroutine
 end module
 subroutine test02()
 use mod02
 call mod_sub()
 end
 module mod03
 interface aa
  module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 integer b(10),a,d(10),c,f(10),e
 equivalence (a,b(9))
 equivalence (c,d(5))
 equivalence (e,c)
 equivalence (e,f(4))
 equivalence (f(3),a)
 f=(/(i,i=1,10)/)
 if (a.ne.3) write(6,*) "NG"
 if (e.ne.4) write(6,*) "NG"
 if (c.ne.4) write(6,*) "NG"
 if (d(5).ne.4) write(6,*) "NG"
 if (b(8).ne.2) write(6,*) "NG"
 if (d(3).ne.2) write(6,*) "NG"
 end subroutine
 end module
 subroutine test03()
 use mod03
 call mod_sub()
 end
 module mod04
 interface aa
  module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 integer a,b(10),c,d(10),e,f(10)
 equivalence (a,b(1))
 equivalence (c,d(1))
 equivalence (e,c)
 equivalence (e,f(1))
 equivalence (f(1),a)
 f=(/(i,i=1,10)/)
 if (a.ne.1) write(6,*) "NG"
 if (e.ne.1) write(6,*) "NG"
 if (c.ne.1) write(6,*) "NG"
 if (d(5).ne.5) write(6,*) "NG"
 if (b(8).ne.8) write(6,*) "NG"
 if (d(3).ne.3) write(6,*) "NG"
 end subroutine
 end module
 subroutine test04()
 use mod04
 call mod_sub()
 end

 module mod05
 interface aa
  module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 integer a,b(10),c,d(10),e,f(10)
 equivalence (a,b(1))
 equivalence (c,d(1))
 equivalence (e,c)
 equivalence (e,f(1))
 equivalence (f(1),a)
 f=(/(i,i=1,10)/)
 if (a.ne.1) write(6,*) "NG"
 if (e.ne.1) write(6,*) "NG"
 if (c.ne.1) write(6,*) "NG"
 if (d(5).ne.5) write(6,*) "NG"
 if (b(8).ne.8) write(6,*) "NG"
 if (d(3).ne.3) write(6,*) "NG"
 end subroutine
 end module
 subroutine test05()
 use mod05
 call mod_sub()
 end
 module mod06
 interface aa
  module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 integer a,b(10),c,d(10),e,f(10)
 equivalence (a,b(1))
 equivalence (c,d(9))
 equivalence (e,c)
 equivalence (e,f(5))
 equivalence (f(2),a)
 f=(/(i,i=1,10)/)
 if (a.ne.2) write(6,*) "NG"
 if (e.ne.5) write(6,*) "NG"
 if (c.ne.5) write(6,*) "NG"
 if (d(5).ne.1) write(6,*) "NG"
 if (b(8).ne.9) write(6,*) "NG"
 if (d(6).ne.2) write(6,*) "NG"
 end subroutine
 end module
 subroutine test06()
 use mod06
 call mod_sub()
 end
 module mod07
 interface aa
  module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 integer a,b(10),c,d(10),e,f(10)
 equivalence (a,b(2))
 equivalence (c,d(1))
 equivalence (e,c)
 equivalence (e,f(5))
 equivalence (f(2),a)
 f=(/(i,i=1,10)/)
 if (a.ne.2) write(6,*) "NG"
 if (e.ne.5) write(6,*) "NG"
 if (c.ne.5) write(6,*) "NG"
 if (d(5).ne.9) write(6,*) "NG"
 if (b(5).ne.5) write(6,*) "NG"
 if (d(4).ne.8) write(6,*) "NG"
 end subroutine
 end module
 subroutine test07()
 use mod07
 call mod_sub()
 end
 module mod08
 interface aa
  module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 integer a,b(10),c,d(10),e,f(10)
 equivalence (a,b(1))
 equivalence (c,d(1))
 equivalence (e,c)
 equivalence (e,f(1))
 equivalence (f(2),a)
 f=(/(i,i=1,10)/)
 if (a.ne.2) write(6,*) "NG"
 if (e.ne.1) write(6,*) "NG"
 if (c.ne.1) write(6,*) "NG"
 if (d(5).ne.5) write(6,*) "NG"
 if (b(8).ne.9) write(6,*) "NG"
 if (d(4).ne.4) write(6,*) "NG"
 end subroutine
 end module
 subroutine test08()
 use mod08
 call mod_sub()
 end
 module mod09
 interface aa
  module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 integer a,b(10),c,d(10),e,f(10)
 equivalence (a,b(1))
 equivalence (c,d(3))
 equivalence (e,c)
 equivalence (e,f(1))
 equivalence (f(2),a)
 f=(/(i,i=1,10)/)
 if (a.ne.2) write(6,*) "NG"
 if (e.ne.1) write(6,*) "NG"
 if (c.ne.1) write(6,*) "NG"
 if (d(5).ne.3) write(6,*) "NG"
 if (b(8).ne.9) write(6,*) "NG"
 if (d(4).ne.2) write(6,*) "NG"
 end subroutine
 end module
 subroutine test09()
 use mod09
 call mod_sub()
 end
 module mod10
 interface aa
  module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 integer a,b(10),c,d(10),e,f(10)
 equivalence (a,b(1))
 equivalence (c,d(3))
 equivalence (e,c)
 equivalence (e,f(2))
 equivalence (f(1),a)
 f=(/(i,i=1,10)/)
 if (a.ne.1) write(6,*) "NG"
 if (e.ne.2) write(6,*) "NG"
 if (c.ne.2) write(6,*) "NG"
 if (d(5).ne.4) write(6,*) "NG"
 if (b(8).ne.8) write(6,*) "NG"
 if (d(4).ne.3) write(6,*) "NG"
 end subroutine
 end module
 subroutine test10()
 use mod10
 call mod_sub()
 end
