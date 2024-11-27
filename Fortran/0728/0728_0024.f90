 call test01()
 call test02()
 call test03()
 call test04()
 call test05()
 call test06()
 call test07()
 print *,'pass'
 end
 subroutine tains(a,i1,i2)
 integer a(10)
 j=1
 do i=i1,i2
  if (a(i).ne.j) write(6,*) "NG"
  j=j+1
 end do
 end 
 module mod01
 integer  i1,i2
 equivalence (i1,i2)
 equivalence (i3,i4)
 equivalence (i5,i6)
 equivalence (i1,i4)
 equivalence (i5,i3)
 end module
module mmm
 interface aaaaa
 module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 use mod01,a1=>i1,a2=>i2
 a1=10
 if (i5.ne.10) write(6,*) "NG" 
 if (i3.ne.10) write(6,*) "NG" 
 if (i4.ne.10) write(6,*) "NG" 
 if (i6.ne.10) write(6,*) "NG" 
end subroutine
end 
 subroutine test01()
 use mmm
 call mod_sub()
 end
 module mod02
 interface aaaaa
 module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 integer,save,dimension(10) :: a1,a2,a3
 integer i1,i2,i3,i4
 integer,save,dimension(10) :: a4,a5
 integer i5,i6,i7,i8,i9,ia
 integer,save,dimension(10) :: a6,a7,a8,a9,aa
 integer ib,ic,id
 equivalence (a1(1),a2(10),i1)
 equivalence (i7,i6)
 equivalence (a3(2),a4(9),i2)
 equivalence (a5(3),a6(8),i3)
 equivalence (a7(4),a8(7),i4)
 equivalence (a9(5),aa(6),i5)
 equivalence (i2,i1)
 equivalence (i3,i4)
 equivalence (i5,i6)
 equivalence (i2,i7)
 equivalence (i4,i7)
 data a1 /1,2,3,4,5,6,7,8,9,10/
 call tains(a1,1,10)
 call tains(a2,10,10)
 call tains(a3,2,10)
 call tains(a4,9,10)
 call tains(a5,3,10)
 call tains(a6,8,10)
 call tains(a7,4,10)
 call tains(a8,7,10)
 call tains(a9,5,10)
 call tains(aa,6,10)
end subroutine
 end module
 subroutine test02()
 use mod02
call mod_sub()
 end
 module mod03
 interface aaaaa
 module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 integer,save,dimension(10) :: a1,a2,a3
 integer i1,i2,i3,i4
 integer,save,dimension(10) :: a4,a5
 integer i5,i6,i7,i8,i9,ia
 integer,save,dimension(10) :: a6,a7,a8,a9,aa
 integer ib,ic,id
 equivalence (i5,i6)
 equivalence (i2,i7)
 equivalence (a5(3),a6(8),i3)
 equivalence (a1(1),a2(10),i1)
 equivalence (i7,i6)
 equivalence (i2,i1)
 equivalence (a3(2),a4(9),i2)
 equivalence (i3,i4)
 equivalence (a7(4),a8(7),i4)
 equivalence (a9(5),aa(6),i5)
 equivalence (i4,i7)
 data a1 /1,2,3,4,5,6,7,8,9,10/
 call tains(a1,1,10)
 call tains(a2,10,10)
 call tains(a3,2,10)
 call tains(a4,9,10)
 call tains(a5,3,10)
 call tains(a6,8,10)
 call tains(a7,4,10)
 call tains(a8,7,10)
 call tains(a9,5,10)
 call tains(aa,6,10)
end subroutine
 end module
 subroutine test03()
 use mod03
call mod_sub()
 end
 module mod04
 interface aaaaa
 module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 integer,save,dimension(10) :: a1,a2,a3
 integer i1,i2,i3,i4
 integer,save,dimension(10) :: a4,a5
 integer i5,i6,i7,i8,i9,ia
 integer,save,dimension(10) :: a6,a7,a8,a9,aa
 integer ib,ic,id
 equivalence (i5,i6)
 equivalence (i2,i7)
 equivalence (i7,i6)
 equivalence (i2,i1)
 equivalence (i3,i4)
 equivalence (i4,i7)
 equivalence (a7(4),a8(7),i4)
 equivalence (a5(3),a6(8),i3)
 equivalence (a1(1),a2(10),i1)
 equivalence (a3(2),a4(9),i2)
 equivalence (a9(5),aa(6),i5)
 data a1 /1,2,3,4,5,6,7,8,9,10/
 call tains(a1,1,10)
 call tains(a2,10,10)
 call tains(a3,2,10)
 call tains(a4,9,10)
 call tains(a5,3,10)
 call tains(a6,8,10)
 call tains(a7,4,10)
 call tains(a8,7,10)
 call tains(a9,5,10)
 call tains(aa,6,10)
end subroutine
 end module
 subroutine test04()
 use mod04
call mod_sub()
 end
 module mod05
 interface aaaaa
 module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 integer,save,dimension(10) :: a1,a2,a3
 integer i1,i2,i3,i4
 integer,save,dimension(10) :: a4,a5
 integer i5,i6,i7,i8,i9,ia
 integer,save,dimension(10) :: a6,a7,a8,a9,aa
 integer ib,ic,id
 equivalence (i2,i1)
 equivalence (i3,i4)
 equivalence (a7(4),a8(7))
 equivalence (i5,i6)
 equivalence (a8(7),i4)
 equivalence (a5(3),i3)
 equivalence (i2,i7)
 equivalence (a4(9),i2)
 equivalence (a9(5),i5)
 equivalence (i7,i6)
 equivalence (a5(3),a6(8))
 equivalence (a1(1),a2(10))
 equivalence (i4,i7)
 equivalence (a3(2),a4(9))
 equivalence (a9(5),aa(6))
 equivalence (a2(10),i1)
 data a1 /1,2,3,4,5,6,7,8,9,10/
 call tains(a1,1,10)
 call tains(a2,10,10)
 call tains(a3,2,10)
 call tains(a4,9,10)
 call tains(a5,3,10)
 call tains(a6,8,10)
 call tains(a7,4,10)
 call tains(a8,7,10)
 call tains(a9,5,10)
 call tains(aa,6,10)
end subroutine
 end module
 subroutine test05()
 use mod05
call mod_sub()
 end
 module mod06
 interface aaaaa
 module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 integer,save,dimension(10) :: a1,a2,a3
 integer i1,i2,i3,i4
 integer,save,dimension(10) :: a4,a5
 integer i5,i6,i7,i8,i9,ia
 integer,save,dimension(10) :: a6,a7,a8,a9,aa
 integer ib,ic,id
 equivalence (i2,i7)
 equivalence (a3(2),a4(9),i2)
 equivalence (a9(5),aa(6),i5)
 equivalence (i3,i4)
 equivalence (i4,i7)
 equivalence (a7(4),a8(7),i4)
 equivalence (i2,i1)
 equivalence (a5(3),a6(8),i3)
 equivalence (i5,i6)
 equivalence (a1(1),a2(10),i1)
 equivalence (i7,i6)
 data a1 /1,2,3,4,5,6,7,8,9,10/
 call tains(a1,1,10)
 call tains(a2,10,10)
 call tains(a3,2,10)
 call tains(a4,9,10)
 call tains(a5,3,10)
 call tains(a6,8,10)
 call tains(a7,4,10)
 call tains(a8,7,10)
 call tains(a9,5,10)
 call tains(aa,6,10)
end subroutine
 end module
 subroutine test06()
use mod06
call mod_sub()
 end

module mod07
 interface aaaaa
 module procedure mod_sub
 end interface
 contains
 subroutine mod_sub()
 integer,save,dimension(10) :: a1,a2,a3
 integer i1,i2,i3,i4
 integer,save,dimension(10) :: a4,a5
 integer i5,i6,i7,i8,i9,ia
 integer,save,dimension(10) :: a6,a7,a8,a9,aa
 integer ib,ic,id
 equivalence (a1(9),ib)
 equivalence (a1(8),ic)
 equivalence (a1(7),i9)
 equivalence (i2,i7)
 equivalence (i3,i4)
 equivalence (i4,i7)
 equivalence (a7(4),a8(7),i4)
 equivalence (i2,i1)
 equivalence (a5(3),a6(8),i3)
 equivalence (i5,i6)
 equivalence (a1(1),a2(10),i1)
 equivalence (a3(2),a4(9),i2)
 equivalence (a9(5),aa(6),i5)
 equivalence (i7,i6)
 data a1 /1,2,3,4,5,6,7,8,9,10/
 call tains(a1,1,10)
 call tains(a2,10,10)
 call tains(a3,2,10)
 call tains(a4,9,10)
 call tains(a5,3,10)
 call tains(a6,8,10)
 call tains(a7,4,10)
 call tains(a8,7,10)
 call tains(a9,5,10)
 call tains(aa,6,10)
end subroutine
end

 subroutine test07()
use mod07
call mod_sub()
 end
