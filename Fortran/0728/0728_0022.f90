 call test01()
 call test02()
 call test03()
 call test04()
 call test05()
 call test06()
 call test07()
 print *,'pass'
 end
 module mod01
 interface aa
  module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 implicit integer*4 (a)
 equivalence (a1,a2)
 equivalence (a2,a3)
 equivalence (a3,a4)
 equivalence (a4,a5)
 equivalence (a5,a6)
 equivalence (a6,a7)
 equivalence (a7,a8)
 a1=1
 if (a7.ne.1) write(6,*) "NG"
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
 implicit integer*4 (a)
 equivalence (a1,a2)
 equivalence (a2,a3)
 equivalence (a3,a4)
 equivalence (a4,a5)
 equivalence (a5,a6)
 equivalence (a6,a7)
 equivalence (a7,a8)
 a7=1
 if (a2.ne.1) write(6,*) "NG"
 end subroutine
 end module
 subroutine test02()
 use mod02
 call mod_sub()
 end
 module mod03
 implicit integer*4 (a)
 interface aa
  module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 common /com/ a1,a3
 equivalence (a1,a2)
 equivalence (a7,a2)
 equivalence (a3,a4)
 equivalence (a4,a5)
 a7=1
 if (a2.ne.1) write(6,*) "NG"
 a3=2
 if (a5.ne.2) write(6,*) "NG"
 end subroutine
 end module
 subroutine test03()
 use mod03
 call mod_sub()
 end
 module mod04
 implicit integer*4 (a)
 interface aa
  module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 implicit none          
 equivalence (a,b)
 integer*1 a,b,i
 integer*4,pointer :: c(:)
 integer*1 d
 integer*4,allocatable :: e(:)
 integer*4,target :: ta(10)
 ta=(/(i,i=1,10)/)
 c=>ta
 allocate (e(10))
 e=c+1
 do  i=1,10
 if (c(i).ne.i) write(6,*) "NG"
 if (e(i).ne.i+1) write(6,*) "NG"
 end do
 end subroutine
 end module
 subroutine test04()
 use mod04
 call mod_sub()
 end
 module mod05
 implicit none          
 equivalence (a,b)
 integer*1 a,b
 integer*4,pointer :: c(:)
 integer*1 d
 integer*4,allocatable :: e(:)
 end module
module mmm
 interface aa
 module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 use mod05,t1=>c,t2=>c,t3=>c,p1=>e,p2=>e,p3=>e
 integer*4,target :: ta(10)
 ta=(/(i,i=1,10)/)
 t3=>ta
 allocate (p2(10))
 p3=t1+1
 do  i=1,10
 if (t2(i).ne.i) write(6,*) "NG"
 if (p1(i).ne.i+1) write(6,*) "NG"
 end do
end subroutine
end module
 subroutine test05()
 use mmm
 call mod_sub()
 end
 module mod06
 implicit none          
 equivalence (a,b)
 integer*1 a,b
 integer*4,pointer :: c(:)
 integer*1 d,ii
 integer*4,allocatable :: e(:)
 common  a
 common  d,ii
 end module
module nnn
      interface aa
      module procedure mod_sub
      end interface
      contains
      subroutine mod_sub()
 use mod06,t1=>c,t2=>c,t3=>c,p1=>e,p2=>e,p3=>e
 integer*4,target :: ta(10)
 ta=(/(i,i=1,10)/)
 t3=>ta
 allocate (p2(10))
 p3=t1+1
 do  i=1,10
 if (t2(i).ne.i) write(6,*) "NG"
 if (p1(i).ne.i+1) write(6,*) "NG"
 end do
end subroutine
end
 subroutine test06()
 use nnn
 call mod_sub()
 end
 module mod07
 interface aa
  module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 implicit none          
 integer*4 a1(999999) 
 integer*1 b1
 integer*4 a2(999999) 
 integer*1 b2
 integer*4 a3(999999) 
 integer*1 b3
 integer*4 a4(999999),i 
 integer*4 a5(999999) 
 equivalence (b1,a1(1))
 equivalence (a1(99999),a2(99))
 equivalence (a2(99999),a3(999))
 equivalence (a4(999999),a3(9999))
 equivalence (a4(999992),a5(2))
 a4(999991:999999)=(/(i,i=1,9)/)
 do i=1,9
 if (a5(i).ne.i) write(6,*) "NG"
 end do
 end subroutine
 end module
 subroutine test07()
 use mod07
 call mod_sub()
 end
