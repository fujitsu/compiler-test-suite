call test01()
call test02()
call test03()
print *,'pass'
end
elemental function ifun(cha)
intent(in) ::cha
character  cha,ifun*4
ifun=cha//'asd'
end function

subroutine test01()
call e_sub1(1)
call e_sub2('a')
call e_sub3(1)
call e_sub4(1,1.0_4)
contains

subroutine e_sub4(i,r)
intent(in) :: i,r
integer :: i
real :: r
integer    :: a1(digits(i))
integer    :: a2(int(epsilon(r)))
integer    :: a3(huge(i)+1-huge(i))
integer    :: a4(maxexponent(r))
integer    :: a5(minexponent(r))
integer    :: a6(precision(r))
integer    :: a7(radix(i))
integer    :: a8(range(i))
integer    :: a9(int(tiny(r)))
if (size(a1).ne.4) ii=1 
if (size(a2).ne.1) ii=1
if (size(a3).ne.0) ii=1
if (size(a4).ne.4) ii=1
if (size(a5).ne.4) ii=1
if (size(a6).ne.4) ii=1
if (size(a7).ne.4) ii=1
if (size(a8).ne.4) ii=1
if (size(a9).ne.4) ii=1
end subroutine

subroutine e_sub3(i)
intent(in) :: i
integer :: i
integer    :: a1(kind(i))
integer    :: a2(kind(int(i,1)))
integer    :: a3(kind(i+1))
integer    :: a4(kind((/i/)))
integer    :: a5(kind((/(i,j=1,1)/)))
if (size(a1).ne.4) ii=1 
if (size(a2).ne.1) ii=1
if (size(a3).ne.0) ii=1
if (size(a4).ne.4) ii=1
if (size(a5).ne.4) ii=1
end subroutine

subroutine e_sub2(i)
interface
elemental function ifun(cha)
intent(in) ::cha
character  cha,ifun*4
end function 
end interface
intent(in) :: i
character*(*) i
integer    :: a1(len(i))
integer    :: a2(len(i//''))
integer    :: a3(len(''))
integer    :: a4(len(i//'aaa'))
integer    :: a5(len(ifun(i)))
if (size(a1).ne.1) ii=1 
if (size(a2).ne.1) ii=1
if (size(a3).ne.0) ii=1
if (size(a4).ne.4) ii=1
if (size(a5).ne.4) ii=1
end subroutine

subroutine e_sub1(i)
intent(in) :: i
integer    :: a1(bit_size(i))
integer    :: a2(bit_size(i+1))
integer    :: a3(bit_size(-i))
integer    :: a4(bit_size(int(i)))
integer    :: a5(bit_size(int(1)))
if (size(a1).ne.4) ii=1
if (size(a2).ne.4) ii=1 
if (size(a3).ne.4) ii=1 
if (size(a4).ne.4) ii=1 
if (size(a5).ne.4) ii=1 
end subroutine
end

module mod02
contains

subroutine e_sub4(i,r)
intent(in) :: i,r
integer :: i
real :: r
integer    :: a1(digits(i))
integer    :: a2(int(epsilon(r)))
integer    :: a3(huge(i)+1-huge(i))
integer    :: a4(maxexponent(r))
integer    :: a5(minexponent(r))
integer    :: a6(precision(r))
integer    :: a7(radix(i))
integer    :: a8(range(i))
integer    :: a9(int(tiny(r)))
if (size(a1).ne.4) ii=1 
if (size(a2).ne.1) ii=1
if (size(a3).ne.0) ii=1
if (size(a4).ne.4) ii=1
if (size(a5).ne.4) ii=1
if (size(a6).ne.4) ii=1
if (size(a7).ne.4) ii=1
if (size(a8).ne.4) ii=1
if (size(a9).ne.4) ii=1
end subroutine

subroutine e_sub3(i)
intent(in) :: i
integer :: i
integer    :: a1(kind(i))
integer    :: a2(kind(int(i,1)))
integer    :: a3(kind(i+1))
integer    :: a4(kind((/i/)))
integer    :: a5(kind((/(i,j=1,1)/)))
if (size(a1).ne.4) ii=1 
if (size(a2).ne.1) ii=1
if (size(a3).ne.0) ii=1
if (size(a4).ne.4) ii=1
if (size(a5).ne.4) ii=1
end subroutine

subroutine e_sub2(i)
interface
elemental function ifun(cha)
intent(in) ::cha
character  cha,ifun*4
end function 
end interface
intent(in) :: i
character*(*) i
integer    :: a1(len(i))
integer    :: a2(len(i//''))
integer    :: a3(len(''))
integer    :: a4(len(i//'aaa'))
integer    :: a5(len(ifun(i)))
if (size(a1).ne.1) ii=1 
if (size(a2).ne.1) ii=1
if (size(a3).ne.0) ii=1
if (size(a4).ne.4) ii=1
if (size(a5).ne.4) ii=1
end subroutine

subroutine e_sub1(i)
intent(in) :: i
integer    :: a1(bit_size(i))
integer    :: a2(bit_size(i+1))
integer    :: a3(bit_size(-i))
integer    :: a4(bit_size(int(i)))
integer    :: a5(bit_size(int(1)))
if (size(a1).ne.4) ii=1
if (size(a2).ne.4) ii=1 
if (size(a3).ne.4) ii=1 
if (size(a4).ne.4) ii=1 
if (size(a5).ne.4) ii=1 
end subroutine
end
subroutine test02()
use mod02
call e_sub1(1)
call e_sub2('a')
call e_sub3(1)
call e_sub4(1,1.0_4)
end

subroutine test03()
interface

subroutine e_sub4(i,r)
intent(in) :: i,r
integer :: i
real :: r
integer    :: a1(digits(i))
integer    :: a2(int(epsilon(r)))
integer    :: a3(huge(i)+1-huge(i))
integer    :: a4(maxexponent(r))
integer    :: a5(minexponent(r))
integer    :: a6(precision(r))
integer    :: a7(radix(i))
integer    :: a8(range(i))
integer    :: a9(int(tiny(r)))
end subroutine

subroutine e_sub3(i)
intent(in) :: i
integer :: i
integer    :: a1(kind(i))
integer    :: a2(kind(int(i,1)))
integer    :: a3(kind(i+1))
integer    :: a4(kind((/i/)))
integer    :: a5(kind((/(i,j=1,1)/)))
end subroutine

subroutine e_sub2(i)
interface
elemental function ifun(cha)
intent(in) ::cha
character  cha,ifun*4
end function 
end interface
intent(in) :: i
character*(*) i
integer    :: a1(len(i))
integer    :: a2(len(i//''))
integer    :: a3(len(''))
integer    :: a4(len(i//'aaa'))
integer    :: a5(len(ifun(i)))
end subroutine

subroutine e_sub1(i)
intent(in) :: i
integer    :: a1(bit_size(i))
integer    :: a2(bit_size(i+1))
integer    :: a3(bit_size(-i))
integer    :: a4(bit_size(int(i)))
integer    :: a5(bit_size(int(1)))
end subroutine
end interface
call e_sub1(1)
call e_sub2('a')
call e_sub3(1)
call e_sub4(1,1.0_4)
end

subroutine e_sub4(i,r)
intent(in) :: i,r
integer :: i
real :: r
integer    :: a1(digits(i))
integer    :: a2(int(epsilon(r)))
integer    :: a3(huge(i)+1-huge(i))
integer    :: a4(maxexponent(r))
integer    :: a5(minexponent(r))
integer    :: a6(precision(r))
integer    :: a7(radix(i))
integer    :: a8(range(i))
integer    :: a9(int(tiny(r)))
if (size(a1).ne.4) ii=1 
if (size(a2).ne.1) ii=1
if (size(a3).ne.0) ii=1
if (size(a4).ne.4) ii=1
if (size(a5).ne.4) ii=1
if (size(a6).ne.4) ii=1
if (size(a7).ne.4) ii=1
if (size(a8).ne.4) ii=1
if (size(a9).ne.4) ii=1
end subroutine

subroutine e_sub3(i)
intent(in) :: i
integer :: i
integer    :: a1(kind(i))
integer    :: a2(kind(int(i,1)))
integer    :: a3(kind(i+1))
integer    :: a4(kind((/i/)))
integer    :: a5(kind((/(i,j=1,1)/)))
if (size(a1).ne.4) ii=1 
if (size(a2).ne.1) ii=1
if (size(a3).ne.0) ii=1
if (size(a4).ne.4) ii=1
if (size(a5).ne.4) ii=1
end subroutine

subroutine e_sub2(i)
interface
elemental function ifun(cha)
intent(in) ::cha
character  cha,ifun*4
end function 
end interface
intent(in) :: i
character*(*) i
integer    :: a1(len(i))
integer    :: a2(len(i//''))
integer    :: a3(len(''))
integer    :: a4(len(i//'aaa'))
integer    :: a5(len(ifun(i)))
if (size(a1).ne.1) ii=1 
if (size(a2).ne.1) ii=1
if (size(a3).ne.0) ii=1
if (size(a4).ne.4) ii=1
if (size(a5).ne.4) ii=1
end subroutine

subroutine e_sub1(i)
intent(in) :: i
integer    :: a1(bit_size(i))
integer    :: a2(bit_size(i+1))
integer    :: a3(bit_size(-i))
integer    :: a4(bit_size(int(i)))
integer    :: a5(bit_size(int(1)))
if (size(a1).ne.4) ii=1
if (size(a2).ne.4) ii=1 
if (size(a3).ne.4) ii=1 
if (size(a4).ne.4) ii=1 
if (size(a5).ne.4) ii=1 
end subroutine

