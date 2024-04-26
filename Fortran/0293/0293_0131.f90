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
contains

elemental subroutine e_sub3(i)
intent(in) :: i
integer :: i
integer    :: a1(kind(i))
integer    :: a2(kind(int(i,1)))
integer    :: a3(kind(i+1))
integer    :: a4(kind((/i/)))
integer    :: a5(kind((/(i,j=1,1)/)))
end subroutine

elemental subroutine e_sub2(i)
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

elemental subroutine e_sub1(i)
intent(in) :: i
integer    :: a1(bit_size(i))
integer    :: a2(bit_size(i+1))
integer    :: a3(bit_size(-i))
integer    :: a4(bit_size(int(i)))
integer    :: a5(bit_size(int(1)))
end subroutine
end

module mod02
contains

elemental subroutine e_sub3(i)
intent(in) :: i
integer :: i
integer    :: a1(kind(i))
integer    :: a2(kind(int(i,1)))
integer    :: a3(kind(i+1))
integer    :: a4(kind((/i/)))
integer    :: a5(kind((/(i,j=1,1)/)))
end subroutine

elemental subroutine e_sub2(i)
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

elemental subroutine e_sub1(i)
intent(in) :: i
integer    :: a1(bit_size(i))
integer    :: a2(bit_size(i+1))
integer    :: a3(bit_size(-i))
integer    :: a4(bit_size(int(i)))
integer    :: a5(bit_size(int(1)))
end subroutine
end
subroutine test02()
use mod02
call e_sub1(1)
call e_sub2('a')
call e_sub3(1)
end

subroutine test03()
interface
elemental subroutine e_sub3(i)
intent(in) :: i
integer :: i
integer    :: a1(kind(i))
integer    :: a2(kind(int(i,1)))
integer    :: a3(kind(i+1))
integer    :: a4(kind((/i/)))
integer    :: a5(kind((/(i,j=1,1)/)))
end subroutine
elemental subroutine e_sub2(i)
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
elemental subroutine e_sub1(i)
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
end

elemental subroutine e_sub3(i)
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

elemental subroutine e_sub2(i)
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

elemental subroutine e_sub1(i)
intent(in) :: i
integer    :: a1(bit_size(i))
integer    :: a2(bit_size(i+1))
end subroutine

