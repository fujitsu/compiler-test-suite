call test01()
print *,"pass"
end

subroutine test01()
integer a(100000,1),b(100000),c(100000),d(100000)
integer e(100000),f(100000)
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine

subroutine test02()
integer a(100000),b(100000),c(100000),d(100000)
integer e(100000),f(100000)
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine

subroutine test03()
integer a(100000,1),b(100000),c(100000),d(100000)
integer e(100000),f(100000)
common /comm/c
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine

subroutine test04()
integer a(100000,1),b(100000),c(100000),d(100000)
integer e(100000),f(100000)
save c
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine

subroutine test05()
integer a(100000,1),b(100000),c(100000),d(100000)
integer e(100000),f(100000)
common /comma/c,ii
equivalence(ii,jj)
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine

subroutine test06()
integer a(100000,1),b(100000),c(100000),d(100000)
integer e(100000),f(100000)
save c
equivalence(c,jj)
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine

subroutine test07()
integer a1(100000,1),b1(100000)
integer a2(100000,1),b2(100000)
integer a(100000,1),b(100000),c(100000),d(100000)
integer e(100000),f(100000)
equivalence(c,jj)
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
a1=1;b1=size(a1);b1=b1;
a2=1;b2=size(a2);b2=b2;
end subroutine

subroutine test08()
integer a(100000,1),b(100000),c(100000),d(100000)
integer e(100000),f(100000)
common /c001/ b
common /c002/ c
common /c003/ d
common /c004/ e
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine

subroutine test00()
common /c000a/ a,ii
integer a(100000,1)
end
subroutine test09()
integer a(100000,1),b(100000),c(100000),d(100000)
integer e(100000),f(100000)
common /c000a/ a,ii
common /c001a/ b
common /c002a/ c
common /c003a/ d
common /c004a/ e
a=1;b=size(a);c=b;d=c;e=d;f=e;a=size(f);
end subroutine


