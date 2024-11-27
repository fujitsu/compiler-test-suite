interface
subroutine test02(a,b)
integer a(:),b(:)
end subroutine
subroutine test03(a,b)
integer a(:),b(:)
end subroutine
end interface
integer a(10),b(10)
a=1
b=1
call test01()
call test02(a,b)
call test03(a,b)
print *,'pass'
end

subroutine test01()
integer a1(10),a2(10,10),a3(10,10,10)
integer b1(10),b2(10,10),b3(10,10,10)
integer c1(10),c2(10,10),c3(10,10,10)
a1=1
a2=1
a3=1
b1=1
b2=1
b3=1
forall (i1=1:10,iw1=1:1,.true.)
a1(i1*iw1)=1
forall (i2=iw1:10,iw2=10:10,a1(i2).eq.1)
b1=a1
a2(i1,:)=a1+1
b2=2
c2(i1,i2)=b2(i1,i2)*a2(i1,i2)
forall (i3=1:iw2,iw3=1:1,a2(1,1).eq.iw1+1)
a3(i3,:,:) = a2+1
end forall
forall (ii=1:10)
where (a3(ii,:,:).eq.a2+1) a2=1
end forall
end forall
end forall
end

elemental function ifun01(ia1,ia2)
intent(in) :: ia1,ia2
ifun01=ia1+ia2
end function
elemental function ifun02(ia1)
intent(in) :: ia1
ifun02=ia1
end function

subroutine test02(a,b)
interface operator(.aaa.)
elemental function ifun01(ia1,ia2)
intent(in) :: ia1,ia2
end function 
end interface
interface 
elemental function ifun02(ia1)
intent(in) :: ia1
end function 
end interface
integer a(:),b(:),i(10)
i=ifun02(a)+ifun02(a)
i=ifun02(a).aaa.ifun02(a)
i=ifun01(b,a).aaa.ifun01(b,a)
end 

module mod3
contains
elemental function ifun01(ia1,ia2)
intent(in) :: ia1,ia2
ifun01=ia1+ia2
end function
elemental function ifun02(ia1)
intent(in) :: ia1
ifun02=ia1
end function
end

subroutine test03(a,b)
use mod3
interface operator(.aaa.)
module procedure ifun01
end interface
integer a(:),b(:),i(10)
i=ifun02(a)+ifun02(a)
i=ifun02(a).aaa.ifun02(a)
i=ifun01(b,a).aaa.ifun01(b,a)
end

