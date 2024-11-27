 call test01()
 call test02()
 call test03()
 call test04()
 call test05()
 call test06()
 print *,'pass'
 end
 module mod01
 interface aa
  module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 integer a1,a2(10),a3,a4(10),a5,a6(10)
 integer a7,a8(10),a9,aa(10),ab,ac(10)
 equivalence (a1,a2(10))
 equivalence (a3,a4(10))
 equivalence (a5,a6(10))
 equivalence (a7,a8(10))
 equivalence (a9,aa(10))
 equivalence (ab,ac(10))
 equivalence (a1,a3)
 equivalence (a5,a3)
 equivalence (a5,a7)
 equivalence (a9,a7)
 equivalence (a9,ab)
 a2=(/(i,i=1,10)/)
 do i=1,10
  if (a2(i).ne.i) write(6,*) "NG"
  if (a4(i).ne.i) write(6,*) "NG"
  if (a6(i).ne.i) write(6,*) "NG"
  if (a8(i).ne.i) write(6,*) "NG"
  if (aa(i).ne.i) write(6,*) "NG"
  if (ac(i).ne.i) write(6,*) "NG"
 end do
end subroutine
 end module
 subroutine test01()
 use mod01
call mod_sub()
 end
 module mod02
 interface aaaaaa
  module procedure mod_sub
 end interface
 integer a1,a2(10),a3,a4(10),a5,a6(10)
 integer a7,a8(10),a9,aa(10),ab,ac(10)
 equivalence (a1,a2(10))
 equivalence (a3,a4(10))
 equivalence (a5,a6(10))
 equivalence (a7,a8(10))
 equivalence (a9,aa(10))
 equivalence (ab,ac(10))
 equivalence (a1,a3)
 equivalence (a5,a3)
 equivalence (a5,a7)
 equivalence (a9,a7)
 equivalence (a9,ab)
 private a1,a3,a5,a7,a9,ab
 contains
 subroutine mod_sub()
 a2=(/(i,i=1,10)/)
 do i=1,10
  if (a2(i).ne.i) write(6,*) "NG"
  if (a4(i).ne.i) write(6,*) "NG"
  if (a6(i).ne.i) write(6,*) "NG"
  if (a8(i).ne.i) write(6,*) "NG"
  if (aa(i).ne.i) write(6,*) "NG"
  if (ac(i).ne.i) write(6,*) "NG"
 end do
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
 integer a1,a2(10),a3,a4(10),a5,a6(10)
 integer a7,a8(10),a9,aa(10),ab,ac(10)
 equivalence (a1,a2(7))
 equivalence (a3,a4(7))
 equivalence (a5,a6(7))
 equivalence (a7,a8(7))
 equivalence (a9,aa(7))
 equivalence (ab,ac(7))
 equivalence (a1,a3)
 equivalence (a5,a3)
 equivalence (a5,a7)
 equivalence (a9,a7)
 equivalence (a9,ab)
 a2=(/(i,i=1,10)/)
 do i=1,10
  if (a2(i).ne.i) write(6,*) "NG"
  if (a4(i).ne.i) write(6,*) "NG"
  if (a6(i).ne.i) write(6,*) "NG"
  if (a8(i).ne.i) write(6,*) "NG"
  if (aa(i).ne.i) write(6,*) "NG"
  if (ac(i).ne.i) write(6,*) "NG"
 end do
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
 integer a1,a2(10),a3,a4(10),a5,a6(10)
 integer a7,a8(10),a9,aa(10),ab,ac(10)
 equivalence (a1,a2(6))
 equivalence (a3,a4(5))
 equivalence (a5,a6(4))
 equivalence (a7,a8(3))
 equivalence (a9,aa(2))
 equivalence (ab,ac(1))
 equivalence (a1,a3)
 equivalence (a5,a3)
 equivalence (a5,a7)
 equivalence (a9,a7)
 equivalence (a9,ab)
 ac=(/(i,i=1,10)/)
 do i=1,10
  if (ac(i).ne.i) write(6,*) "NG"
 end do
 do i=2,10
  if (aa(i).ne.i-1) write(6,*) "NG"
 end do
 do i=3,10
  if (a8(i).ne.i-2) write(6,*) "NG"
 end do
 do i=4,10
  if (a6(i).ne.i-3) write(6,*) "NG"
 end do
 do i=5,10
  if (a4(i).ne.i-4) write(6,*) "NG"
 end do
 do i=6,10
  if (a2(i).ne.i-5) write(6,*) "NG"
 end do
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
 integer a1,a2(10),a3,a4(10),a5,a6(10)
 integer a7,a8(10),a9,aa(10),ab,ac(10)
 equivalence (a1,a2(1))
 equivalence (a3,a4(2))
 equivalence (a5,a6(3))
 equivalence (a7,a8(4))
 equivalence (a9,aa(5))
 equivalence (ab,ac(6))
 equivalence (a1,a3)
 equivalence (a5,a3)
 equivalence (a5,a7)
 equivalence (a9,a7)
 equivalence (a9,ab)
 a2=(/(i,i=1,10)/)
 do i=1,10
  if (a2(i).ne.i) write(6,*) "NG"
 end do
 do i=2,10
  if (a4(i).ne.i-1) write(6,*) "NG"
 end do
 do i=3,10
  if (a6(i).ne.i-2) write(6,*) "NG"
 end do
 do i=4,10
  if (a8(i).ne.i-3) write(6,*) "NG"
 end do
 do i=5,10
  if (aa(i).ne.i-4) write(6,*) "NG"
 end do
 do i=6,10
  if (ac(i).ne.i-5) write(6,*) "NG"
 end do
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
 integer a1,a2(10),a3,a4(10),a5,a6(10)
 integer a7,a8(10),a9,aa(10),ab,ac(10)
 equivalence (a1,a2(5))
 equivalence (a3,a4(9))
 equivalence (a5,a6(7))
 equivalence (a7,a8(3))
 equivalence (a9,aa(1))
 equivalence (ab,ac(5))
 equivalence (a1,a3)
 equivalence (a5,a3)
 equivalence (a5,a7)
 equivalence (a9,a7)
 equivalence (a9,ab)
 aa=(/(i,i=1,10)/)
 do i=1,10
  if (aa(i).ne.i) write(6,*) "NG"
 end do
 do i=5,10
  if (a2(i).ne.i-4) write(6,*) "NG"
 end do
 do i=5,10
  if (ac(i).ne.i-4) write(6,*) "NG"
 end do
 do i=3,10
  if (a8(i).ne.i-2) write(6,*) "NG"
 end do
 do i=7,10
  if (a6(i).ne.i-6) write(6,*) "NG"
 end do
 do i=9,10
  if (a4(i).ne.i-8) write(6,*) "NG"
 end do
end subroutine
 end module
 subroutine test06()
 use mod06
call mod_sub()
 end
