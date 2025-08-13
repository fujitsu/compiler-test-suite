subroutine s1(kk)
integer(8) xa(kk),xb(kk),xaa(kk),xbb(kk)
do k=1,kk
block
integer:: a(3),b(k)
character(k)::  aa(3),bb(k)
a=1
b=2
aa='12'
bb='34'
write(3, '(1x ,"a =",z16.16)') loc(a)
write(3, '(1x ,"b =",z16.16)') loc(b)
write(3, '(1x ,"aa=",z16.16)') loc(aa)
write(3, '(1x ,"bb=",z16.16)') loc(bb)
xa(k)=loc(a)
xb(k)=loc(b)
xaa(k)=loc(aa)
xbb(k)=loc(bb)
end block
end do
if (.not.any(xa(1)==xa(2:))) write(3,*)101,xa
if (.not.any(xb(1)==xb(2:))) write(3,*)102,xb
if (.not.any(xaa(1)==xaa(2:))) write(3,*)103,xaa
if (.not.any(xbb(1)==xbb(2:))) write(3,*)104,xbb
end
call s1(10)
print *,'pass'
end

