call test01()
print *,"pass"
end

subroutine test01()
integer a(100000,1),b(100000),c(100000),d(100000)
integer e(100000),f(100000)
data a /100000*1/
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine

subroutine test02()
integer*2 a(100000)
integer b(100000),c(100000),d(100000)
integer e(100000),f(100000)
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine

subroutine test03()
integer a(100000,1),b(100000),c(100000),d(100000)
integer e(100000),f(100000)
pointer (i,a)
i=loc(a)
i=i
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine

module mod
integer ii
data ii /100000/
end
subroutine test04()
use mod
integer a(ii,1),b(100000),c(100000),d(100000)
integer e(100000),f(100000)
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine

subroutine test05()
integer b(100000),c(100000),d(100000)
integer e(100000),f(100000)
integer,pointer :: a(:,:)
allocate (a(100000,1))
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine

subroutine test06()
integer b(100000),c(100000),d(100000)
integer e(100000),f(100000)
integer,allocatable :: a(:,:)
allocate (a(100000,1))
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine

subroutine test07()
integer a(100000,1),b(100000),c(100000),d(100000)
integer e(100000),f(100000)
equivalence(a,iii)
iii=1; iii=iii
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine

subroutine test08(a)
integer a(100000,1),b(100000),c(100000),d(100000)
integer e(100000),f(100000)
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine

function test09() result(a)
integer a(100000,1),b(100000),c(100000),d(100000)
integer e(100000),f(100000)
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end function

subroutine test10()
integer a(100000,1),b(100000),c(100000),d(100000)
integer e(100000),f(100000)
save a
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine

subroutine test11()
integer a(100000,1),b(100000),c(100000),d(100000)
integer e(100000),f(100000)
common /cccc/a,ii
data ii/1/
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine

subroutine test12()
integer a(100000,1),b(100000),c(100000),d(100000)
integer e(100000),f(100000)
save
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine

