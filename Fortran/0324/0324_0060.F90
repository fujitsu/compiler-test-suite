pointer (ip,a)
integer a(10)
integer b(10)
pointer (ip1,a1)
integer a1(10,10)
integer b1(10,10)
pointer (ip2,a2)
logical a2(10,10)
logical b2(10,10)
pointer (ip3,a3)
real    a3(10)
real    b3(10)
pointer (ip4,a4)
character    a4(10)
character    b4(10)
ip4=loc(b4)
a4='a'    
b4='a'    
ip3=loc(b3)
a3=1      
b3=1      
ip2=loc(b2)
a2=.true.
b2=.true.
ip1=loc(b1)
a1=1
do i1=1,10
 do i2=1,10
   b1(i1,i2)=i1+i2 
 end do
end do
ip=loc(b)
a=1
b=(/1,2,3,4,5,6,7,8,9,10/)
call test01(ip,loc(b))
call test02(ip)
call test03(ip1,10)
call test04(ip1,10)
call test05(ip1,10)
call test06(ip1,10)
call test07(ip3,10)
call test08(ip4,10)
call test09(ip3,10)
call test10(ip3,10)
call test11(ip3,10)
call test12(ip3,10)
call test13(ip3,10)
call test14(ip3,10)
call testa03(ip1,10)
call testa04(ip1,10)
call testa05(ip1,10)
call testa06(ip1,10)
call testa07(ip3,10)
call testa08(ip4,10)
call testa09(ip3,10)
call testa10(ip3,10)
call testa11(ip3,10)
call testa12(ip3,10)
call testa13(ip3,10)
call testa14(ip3,10)
call test()
print *,'pass'
end

subroutine test()
pointer (ip,ia)
integer ia(10),ib(10)
pointer (jp,ja)
integer ja,jb
ib=(/1,2,3,4,5,6,7,8,9,10/)
ip=loc(ib)
jb=7
jp=loc(jb)
call subb(ip,jp,ip)
end
subroutine subb(ip,jp,kp)
pointer (ip,ia)
integer ia(*)
pointer (kp,ka)
integer ka(10)
pointer (jp,ja)
integer ja
integer arr(10)
data arr /1,2,3,4,5,6,7,8,9,10/
if (arr(ia(1)).ne.1) print *,'fail'
if (arr(ja).ne.7) print *,'fail'
if (arr(ia(2)).ne.2) print *,'fail'
if (arr(int(ia(1))).ne.1) print *,'fail'
if (arr(int(ja)).ne.7) print *,'fail'
if (arr(int(ia(2))).ne.2) print *,'fail'
arr=int(ka)
 do i=1,10
   if (arr(i).ne.i) print *,'fail'
 end do
end

subroutine test14(ip1,n)
pointer (ip1,a)
real    a(*)
if (tiny(a).ne.1.17549435E-38) print *,'fail'
end subroutine

subroutine test13(ip1,n)
pointer (ip1,a)
real    a(*)
if (range(a).ne.37) print *,'fail'
end subroutine

subroutine test12(ip1,n)
pointer (ip1,a)
real    a(*)
if (radix(a).ne.2) print *,'fail'
end subroutine

subroutine test11(ip1,n)
pointer (ip1,a)
real    a(*)
if (precision(a).ne.6) print *,'fail'
end subroutine


subroutine test10(ip1,n)
pointer (ip1,a)
real    a(*)
if (minexponent(a).ne.-125) print *,'fail'
end subroutine

subroutine test09(ip1,n)
pointer (ip1,a)
real    a(*)
if (maxexponent(a).ne.128) print *,'fail'
end subroutine

subroutine test08(ip1,n)
pointer (ip1,a)
character    a(*)
if (len(a).ne.1) print *,'fail'
end subroutine

subroutine test07(ip1,n)
pointer (ip1,a)
real    a(*)
if (epsilon(a).ne.1.19209290E-07) print *,'fail'
end subroutine

subroutine test06(ip1,n)
pointer (ip1,a)
integer a(*)
if (digits(a).eq.32) print *,'fail'
end subroutine

subroutine test05(ip1,n)
pointer (ip1,a)
integer a(*)
if (bit_size(a).ne.32) print *,'fail'
end subroutine

subroutine test04(ip1,n)
pointer (ip1,a)
integer a(n,*)
if (size(a,1).ne.10) print *,'fail'
end subroutine

subroutine test03(ip1,n)
pointer (ip1,a)
integer a(n,*)
if (ubound(a,1).ne.10) print *,'fail'
if (lbound(a,2).ne.1) print *,'fail'
end subroutine

subroutine test01(ip,iaddres)
pointer (ip,a)
integer(8) a(*)
integer(8) ip,iaddres
if (loc(a).ne.iaddres) print *,'fail'
end subroutine

subroutine test02(ip)
pointer (ip,a)
integer a(*)
if (lbound(a,1).ne.1) print *,'fail'
end subroutine

subroutine testa14(ip1,n)
pointer (ip1,a)
real    a(n)
if (tiny(a).ne.1.17549435E-38) print *,'fail'
end subroutine

subroutine testa13(ip1,n)
pointer (ip1,a)
real    a(n)
if (range(a).ne.37) print *,'fail'
end subroutine

subroutine testa12(ip1,n)
pointer (ip1,a)
real    a(n)
if (radix(a).ne.2) print *,'fail'
end subroutine

subroutine testa11(ip1,n)
pointer (ip1,a)
real    a(n)
if (precision(a).ne.6) print *,'fail'
end subroutine


subroutine testa10(ip1,n)
pointer (ip1,a)
real    a(n)
if (minexponent(a).ne.-125) print *,'fail'
end subroutine

subroutine testa09(ip1,n)
pointer (ip1,a)
real    a(n)
if (maxexponent(a).ne.128) print *,'fail'
end subroutine

subroutine testa08(ip1,n)
pointer (ip1,a)
character    a(n)
if (len(a).ne.1) print *,'fail'
end subroutine

subroutine testa07(ip1,n)
pointer (ip1,a)
real    a(n)
if (epsilon(a).ne.1.19209290E-07) print *,'fail'
end subroutine

subroutine testa06(ip1,n)
pointer (ip1,a)
integer a(n)
if (digits(a).eq.32) print *,'fail'
end subroutine

subroutine testa05(ip1,n)
pointer (ip1,a)
integer a(n)
if (bit_size(a).ne.32) print *,'fail'
end subroutine

subroutine testa04(ip1,n)
pointer (ip1,a)
integer a(n,n)
if (size(a,1).ne.10) print *,'fail'
end subroutine

subroutine testa03(ip1,n)
pointer (ip1,a)
integer a(n,n)
if (ubound(a,1).ne.10) print *,'fail'
if (lbound(a,2).ne.1) print *,'fail'
end subroutine
