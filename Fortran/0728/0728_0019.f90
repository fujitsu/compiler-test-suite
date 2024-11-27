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
      module mod1
      interface aa
      module procedure mod_sub
      end interface
      contains
      subroutine mod_sub()
      integer i1,i2,i3,i4,i5,i6
      equivalence (i1,i2)
      equivalence (i1,i3)
      equivalence (i1,i4)
      equivalence (i1,i5)
      equivalence (i1,i6)
      i1=1
      if (i1 .ne.1) write(6,*) "NG"
      if (i2 .ne.1) write(6,*) "NG"
      if (i3 .ne.1) write(6,*) "NG"
      if (i4 .ne.1) write(6,*) "NG"
      if (i5 .ne.1) write(6,*) "NG"
      if (i6 .ne.1) write(6,*) "NG"
      end subroutine
      end module
      subroutine test01()
      use mod1
      call mod_sub()
      end subroutine
      module mod2
      interface aa
      module procedure mod_sub
      end interface
      contains
      subroutine mod_sub()
      integer i1,i2,i3,i4,i5,i6
      equivalence (i2,i1,i2)
      equivalence (i3,i1,i2)
      equivalence (i4,i1,i2)
      equivalence (i5,i1,i2)
      equivalence (i6,i1,i2)
      i1=1
      if (i1 .ne.1) write(6,*) "NG"
      if (i2 .ne.1) write(6,*) "NG"
      if (i3 .ne.1) write(6,*) "NG"
      if (i4 .ne.1) write(6,*) "NG"
      if (i5 .ne.1) write(6,*) "NG"
      if (i6 .ne.1) write(6,*) "NG"
      end subroutine
      end module
      subroutine test02()
      use mod2
      call mod_sub()
      end subroutine
      module mod3
      interface aa
      module procedure mod_sub
      end interface
      contains
      subroutine mod_sub()
      integer i1,i2,i3,i4,i5,i6
      equivalence (i2,i4,i2)
      equivalence (i3,i5,i2)
      equivalence (i4,i6,i2)
      equivalence (i5,i2,i2)
      equivalence (i6,i1,i2)
      i1=1
      if (i1 .ne.1) write(6,*) "NG"
      if (i2 .ne.1) write(6,*) "NG"
      if (i3 .ne.1) write(6,*) "NG"
      if (i4 .ne.1) write(6,*) "NG"
      if (i5 .ne.1) write(6,*) "NG"
      if (i6 .ne.1) write(6,*) "NG"
      end subroutine
      end module
      subroutine test03()
      use mod3
      call mod_sub()
      end subroutine
      module mod4
      interface aa
      module procedure mod_sub
      end interface
      contains
      subroutine mod_sub()
      integer i1,i2,i3,i4,i5,i6
      equivalence (i2,i4,i2,i5,i6,i3,i4,i5,i1)
      i1=1
      if (i1 .ne.1) write(6,*) "NG"
      if (i2 .ne.1) write(6,*) "NG"
      if (i3 .ne.1) write(6,*) "NG"
      if (i4 .ne.1) write(6,*) "NG"
      if (i5 .ne.1) write(6,*) "NG"
      if (i6 .ne.1) write(6,*) "NG"
      end subroutine
      end module
      subroutine test04()
      use mod4
      call mod_sub()
      end subroutine
      module mod5
      interface aa
      module procedure mod_sub
      end interface
      contains
      subroutine mod_sub()
      integer i1,i2,i3,i4,i5,i6
      equivalence (i2,i3)
      equivalence (i2,i4)
      equivalence (i2,i5)
      equivalence (i2,i6)
      equivalence (i2,i1)
      i1=1
      if (i1 .ne.1) write(6,*) "NG"
      if (i2 .ne.1) write(6,*) "NG"
      if (i3 .ne.1) write(6,*) "NG"
      if (i4 .ne.1) write(6,*) "NG"
      if (i5 .ne.1) write(6,*) "NG"
      if (i6 .ne.1) write(6,*) "NG"
      end subroutine
      end module
      subroutine test05()
      use mod5
      call mod_sub()
      end subroutine
      module mod6
      interface aa
      module procedure mod_sub
      end interface
      contains
      subroutine mod_sub()
      integer i1,i2,i3,i4,i5,i6
      equivalence (i3,i4)
      equivalence (i3,i5)
      equivalence (i3,i6)
      equivalence (i3,i1)
      equivalence (i3,i2)
      i1=1
      if (i1 .ne.1) write(6,*) "NG"
      if (i2 .ne.1) write(6,*) "NG"
      if (i3 .ne.1) write(6,*) "NG"
      if (i4 .ne.1) write(6,*) "NG"
      if (i5 .ne.1) write(6,*) "NG"
      if (i6 .ne.1) write(6,*) "NG"
      end subroutine
      end module
      subroutine test06()
      use mod6
      call mod_sub()
      end subroutine
      module mod7
      interface aa
      module procedure mod_sub
      end interface
      contains
      subroutine mod_sub()
      integer i1,i2,i3,i4,i5,i6
      equivalence (i4,i5)
      equivalence (i4,i6)
      equivalence (i4,i1)
      equivalence (i4,i2)
      equivalence (i4,i3)
      i1=1
      if (i1 .ne.1) write(6,*) "NG"
      if (i2 .ne.1) write(6,*) "NG"
      if (i3 .ne.1) write(6,*) "NG"
      if (i4 .ne.1) write(6,*) "NG"
      if (i5 .ne.1) write(6,*) "NG"
      if (i6 .ne.1) write(6,*) "NG"
      end subroutine
      end module
      subroutine test07()
      use mod7
      call mod_sub()
      end subroutine
      module mod8
      interface aa
      module procedure mod_sub
      end interface
      contains
      subroutine mod_sub()
      integer i1,i2,i3,i4,i5,i6
      equivalence (i5,i6)
      equivalence (i5,i1)
      equivalence (i5,i2)
      equivalence (i5,i3)
      equivalence (i5,i4)
      i1=1
      if (i1 .ne.1) write(6,*) "NG"
      if (i2 .ne.1) write(6,*) "NG"
      if (i3 .ne.1) write(6,*) "NG"
      if (i4 .ne.1) write(6,*) "NG"
      if (i5 .ne.1) write(6,*) "NG"
      if (i6 .ne.1) write(6,*) "NG"
      end subroutine
      end module
      subroutine test08()
      use mod8
      call mod_sub()
      end subroutine
      module mod9
      interface aa
      module procedure mod_sub
      end interface
      contains
      subroutine mod_sub()
      integer i1,i2,i3,i4,i5,i6
      equivalence (i6,i1)
      equivalence (i6,i2)
      equivalence (i6,i3)
      equivalence (i6,i4)
      equivalence (i6,i5)
      i1=1
      if (i1 .ne.1) write(6,*) "NG"
      if (i2 .ne.1) write(6,*) "NG"
      if (i3 .ne.1) write(6,*) "NG"
      if (i4 .ne.1) write(6,*) "NG"
      if (i5 .ne.1) write(6,*) "NG"
      if (i6 .ne.1) write(6,*) "NG"
      end subroutine
      end module
      subroutine test09()
      use mod9
      call mod_sub()
      end subroutine
      module mod10
      interface aa
      module procedure mod_sub
      end interface
      contains
      subroutine mod_sub()
      integer i1,i2,i3,i4,i5,i6
      equivalence (i5,i4,i6,i5,i4)
      equivalence (i4,i4,i5,i6,i4,i4)
      equivalence (i4,i5,i4,i6,i3,i4)
      equivalence (i5,i4,i6,i1,i4)
      equivalence (i4,i5,i4,i6,i2,i4)
      i1=1
      if (i1 .ne.1) write(6,*) "NG"
      if (i2 .ne.1) write(6,*) "NG"
      if (i3 .ne.1) write(6,*) "NG"
      if (i4 .ne.1) write(6,*) "NG"
      if (i5 .ne.1) write(6,*) "NG"
      if (i6 .ne.1) write(6,*) "NG"
      end subroutine
      end module
      subroutine test10()
      use mod10
      call mod_sub()
      end subroutine
