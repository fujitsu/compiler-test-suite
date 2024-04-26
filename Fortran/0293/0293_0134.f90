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
interface 
pure subroutine xz(a1,a2,a3,a4,a5)
integer,intent(in)    :: a1(4)
integer,intent(in)    :: a2(1)
integer,intent(in)    :: a3(4)
integer,intent(in)    :: a4(4)
integer,intent(in)    :: a5(4)
end subroutine
end interface
if (size(a1).ne.4) ii=1 
if (size(a2).ne.1) ii=1
if (size(a3).ne.0) ii=1
if (size(a4).ne.4) ii=1
if (size(a5).ne.4) ii=1
a1=1
a2=1
a3=1
a4=1
a5=1
end subroutine

pure      subroutine e_sub2(i)
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

subroutine xz(a1,a2,a3,a4,a5)
integer    :: a1(4)
integer    :: a2(1)
integer    :: a3(4)
integer    :: a4(4)
integer    :: a5(4)
integer p(4)
pointer (ip,p)
ip=loc(a1)
print '(z16.16,x,4(z8.8,1x))',loc(a1), ' ',p
ip=loc(a2)
print '(z16.16,x,4(z8.8,1x))',loc(a2), ' ',p
ip=loc(a3)
print '(z16.16,x,4(z8.8,1x))',loc(a3), ' ',p
ip=loc(a4)
print '(z16.16,x,4(z8.8,1x))',loc(a4), ' ',p
ip=loc(a5)
print '(z16.16,x,4(z8.8,1x))',loc(a5), ' ',p
print *,' '
end subroutine
