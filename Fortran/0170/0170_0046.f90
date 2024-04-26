module mod
integer::loop=100
integer::z13(3)=[(nn,nn=1,3)]
integer::z16(600)
integer::z26(20,30)
contains
subroutine set
z16=[(nn,nn=1,600)]
z26=reshape([(nn,nn=1,600)],[20,30])
end subroutine
end
module modk
use mod
parameter(k1=600,k2=20,k3=30)
integer,parameter::w1=600*2
end
subroutine s01(a,b,k1)
integer:: a(k1),b(k1)
call q3(b(:3), [ a(1),a(2),a(3) ])
end
subroutine s02(a,b,k1)
integer:: a(k1),b(k1)
b(:)= [ a   ]
end
subroutine s03(a,b,k1)
integer:: a(k1),b(k1)
call q6(b(:), [ (a(n),n=1,k1)   ])
end
subroutine s04(a,b,k1,k2,k3)
integer:: a(k2,k3),b(k1)
call q6(b(:), [ a   ])
end
subroutine s05(a,b,k1,k2,k3)
integer:: a(k2,k3),b(k1)
call q6(b(:), [ ((a(n1,n2),n1=1,k2),n2=1,k3)   ])
end
subroutine s06(a,b)
integer:: a(600),b(600)
call q6(b(:), [ a   ])
end
subroutine s07(a,b)
integer:: a(20,30),b(600)
call q6(b(:), [ a   ])
end
subroutine s08(a,b,k1,k2,k3)
integer:: a(k2,k3),b(k1)
call q6(b(:), reshape(  a , [k1] ))
end
subroutine s09(a,b)
integer:: a(600),b(600)
call q6(b(:), reshape ( a ,[600]))
end
subroutine s10(a,b)
integer:: a(20,30),b(600)
call q6(b(:), reshape(  a , [600]  ))
end
subroutine s11(a,b,k1)
integer:: a(k1),b(k1)
call q3(b(:3), [ a(1)+1,a(2)+1,a(3)+1 ])
end
subroutine s12(a,b,k1)
integer:: a(k1),b(k1)
call q6(b(:), [ a+1   ])
end
subroutine s13(a,b,k1)
integer:: a(k1),b(k1)
call q6(b(:), [ (a(n)+1,n=1,k1)   ])
end
subroutine s14(a,b,k1,k2,k3)
integer:: a(k2,k3),b(k1)
call q6(b(:), [ a+1   ])
end
subroutine s15(a,b,k1,k2,k3)
integer:: a(k2,k3),b(k1)
call q6(b(:), [ ((a(n1,n2)+1,n1=1,k2),n2=1,k3)   ])
end
subroutine s16(a,b)
integer:: a(600),b(600)
call q6(b(:), [ a+1   ])
end
subroutine s17(a,b)
integer:: a(20,30),b(600)
call q6(b(:), [ a+1   ])
end
subroutine s18(a,b,k1,k2,k3)
integer:: a(k2,k3),b(k1)
call q6(b(:), reshape(  a+1 , [k1] ))
end
subroutine s19(a,b)
integer:: a(600),b(600)
call q6(b(:), reshape ( a+1 ,[600]))
end
subroutine s20(a,b)
integer:: a(20,30),b(600)
call q6(b(:), reshape(  a+1 , [600]  ))
end
subroutine t01(a,b,k1)
integer:: a(k1),b(k1+3)
call q63(b(:k1+3), [ a(1),a(2),a(3),a ])
end
subroutine t02(a,b,k1,k2)
integer:: a(k1),b(k2)
call qc(b(:), [ a , a  ])
end
subroutine t03(a,b,k1,k2)
integer:: a(k1),b(k2)
call qc(b(:), [ (a(n),n=1,k1), (a(n),n=1,k1)   ])
end
subroutine t04(a,b,k1,k2,k3)
integer:: a(k2,k3),b(k1)
call qc(b(:), [ a , a  ])
end
subroutine t05(a,b,k1,k2,k3)
integer:: a(k2,k3),b(k1)
call qc(b(:), [ ((a(n1,n2),n1=1,k2),n2=1,k3),((a(n1,n2),n1=1,k2),n2=1,k3)   ])
end
subroutine t06(a,b)
integer:: a(600),b(600*2)
call qc(b(:), [ a, a   ])
end
subroutine t07(a,b)
integer:: a(20,30),b(600*2)
call qc(b(:), [ a , a  ])
end
subroutine t11(a,b,k1)
integer:: a(k1),b(k1+3)
call q63(b(:k1+3), [ a(1)+1,a(2)+1,a(3)+1,a+1 ])
end
subroutine t12(a,b,k1,k2)
integer:: a(k1),b(k2)
call qc(b(:), [ a+1 , a+1  ])
end
subroutine t13(a,b,k1,k2)
integer:: a(k1),b(k2)
call qc(b(:), [ (a(n)+1,n=1,k1), (a(n)+1,n=1,k1)   ])
end
subroutine t14(a,b,k1,k2,k3)
integer:: a(k2,k3),b(k1)
call qc(b(:), [ a+1 , a+1  ])
end
subroutine t15(a,b,k1,k2,k3)
integer:: a(k2,k3),b(k1)
call qc(b(:), [ ((a(n1,n2)+1,n1=1,k2),n2=1,k3),((a(n1,n2)+1,n1=1,k2),n2=1,k3)   ])
end
subroutine t16(a,b)
integer:: a(600),b(600*2)
call qc(b(:), [ a+1, a+1   ])
end
subroutine t17(a,b)
integer:: a(20,30),b(600*2)
call qc(b(:), [ a , a  ])
end
subroutine q6(b,a)
use modk
integer:: a(k1),b(k1)
b=a
end
subroutine q63(b,a)
use modk
integer:: a(k1+3),b(k1+3)
b=a
end
subroutine qc(b,a)
use modk
integer:: a(w1),b(w1)
b=a
end
subroutine q3(b,a)
use modk
integer:: a(3),b(3)
b=a
end


subroutine cs01
use mod
parameter(k1=3)
integer:: a(k1),b(k1)
a=z13
call cpu_time(t1)
do n1=1,loop*2000
call  s01(a,b,k1)
end do
call cpu_time(t2)
write(1,*)'s01:', t2-t1
end
subroutine cs02
use mod
parameter(k1=600)
integer:: a(k1),b(k1)
a=z16
call cpu_time(t1)
do n1=1,loop
call       s02(a,b,k1)
end do
call cpu_time(t2)
write(1,*)'s02:', t2-t1
end
subroutine cs03
use mod
parameter(k1=600)
integer:: a(k1),b(k1)
a=z16
call cpu_time(t1)
do n1=1,loop
call       s03(a,b,k1)
end do
call cpu_time(t2)
write(1,*)'s03:', t2-t1
end
subroutine cs04
use mod
parameter(k1=600,k2=20,k3=30)
integer:: a(k2,k3),b(k1)
a=z26
call cpu_time(t1)
do n1=1,loop
call        s04(a,b,k1,k2,k3)
end do
call cpu_time(t2)
write(1,*)'s04:', t2-t1
end
subroutine cs05
use mod
parameter(k1=600,k2=20,k3=30)
integer:: a(k2,k3),b(k1)
a=z26
call cpu_time(t1)
do n1=1,loop
call s05(a,b,k1,k2,k3)
end do
call cpu_time(t2)
write(1,*)'s05:', t2-t1
end
subroutine cs06
use mod
integer:: a(600),b(600)
a=z16
call cpu_time(t1)
do n1=1,loop
call        s06(a,b)
end do
call cpu_time(t2)
write(1,*)'s06:', t2-t1
end
subroutine cs07
use mod
integer:: a(20,30),b(600)
a=z26
call cpu_time(t1)
do n1=1,loop
call        s07(a,b)
end do
call cpu_time(t2)
write(1,*)'s07:', t2-t1
end
subroutine cs08
use mod
parameter(k1=600,k2=20,k3=30)
integer:: a(k2,k3),b(k1)
a=z26
call cpu_time(t1)
do n1=1,loop
call        s08(a,b,k1,k2,k3)
end do
call cpu_time(t2)
write(1,*)'s08:', t2-t1
end
subroutine cs09
use mod
integer:: a(600),b(600)
a=z16
call cpu_time(t1)
do n1=1,loop
call        s09(a,b)
end do
call cpu_time(t2)
write(1,*)'s09:', t2-t1
end
subroutine cs10
use mod
integer:: a(20,30),b(600)
a=z26
call cpu_time(t1)
do n1=1,loop
call        s10(a,b)
end do
call cpu_time(t2)
write(1,*)'s10:', t2-t1
end
subroutine cs11
use modk
integer:: a(k1),b(k1)
a=z16
call cpu_time(t1)
do n1=1,loop*2000
call        s11(a,b,k1)
end do
call cpu_time(t2)
write(1,*)'s11:', t2-t1
end
subroutine cs12
use modk
integer:: a(k1),b(k1)
a=z16
call cpu_time(t1)
do n1=1,loop
call        s12(a,b,k1)
end do
call cpu_time(t2)
write(1,*)'s12:', t2-t1
end
subroutine cs13
use modk
integer:: a(k1),b(k1)
a=z16
call cpu_time(t1)
do n1=1,loop
call        s13(a,b,k1)
end do
call cpu_time(t2)
write(1,*)'s13:', t2-t1
end
subroutine cs14
use modk
integer:: a(k2,k3),b(k1)
a=z26
call cpu_time(t1)
do n1=1,loop
call        s14(a,b,k1,k2,k3)
end do
call cpu_time(t2)
write(1,*)'s14:', t2-t1
end
subroutine cs15
use modk
integer:: a(k2,k3),b(k1)
a=z26
call cpu_time(t1)
do n1=1,loop
call        s15(a,b,k1,k2,k3)
end do
call cpu_time(t2)
write(1,*)'s15:', t2-t1
end
subroutine cs16
use modk
integer:: a(600),b(600)
a=z16
call cpu_time(t1)
do n1=1,loop
call        s16(a,b)
end do
call cpu_time(t2)
write(1,*)'s16:', t2-t1
end
subroutine cs17
use modk
integer:: a(20,30),b(600)
a=z26
call cpu_time(t1)
do n1=1,loop
call        s17(a,b)
end do
call cpu_time(t2)
write(1,*)'s17:', t2-t1
end
subroutine cs18
use modk
integer:: a(k2,k3),b(k1)
a=z26
call cpu_time(t1)
do n1=1,loop
call        s18(a,b,k1,k2,k3)
end do
call cpu_time(t2)
write(1,*)'s18:', t2-t1
end
subroutine cs19
use modk
integer:: a(600),b(600)
a=z16
call cpu_time(t1)
do n1=1,loop
call        s19(a,b)
end do
call cpu_time(t2)
write(1,*)'s19:', t2-t1
end
subroutine cs20
use modk
integer:: a(20,30),b(600)
a=z26
call cpu_time(t1)
do n1=1,loop
call        s20(a,b)
end do
call cpu_time(t2)
write(1,*)'s20:', t2-t1
end
subroutine ct01
use modk
integer:: a(k1),b(k1+3)
a=z16
call cpu_time(t1)
do n1=1,loop
call        t01(a,b,k1)
end do
call cpu_time(t2)
write(1,*)'t01:', t2-t1
end
subroutine ct02
use modk
integer:: a(k1),b(w1)
a=z16
call cpu_time(t1)
do n1=1,loop
call        t02(a,b,k1,w1)
end do
call cpu_time(t2)
write(1,*)'t02:', t2-t1
end
subroutine ct03
use modk
integer:: a(k1),b(w1)
a=z16
call cpu_time(t1)
do n1=1,loop
call        t03(a,b,k1,w1)
end do
call cpu_time(t2)
write(1,*)'t03:', t2-t1
end
subroutine ct04
use modk
integer:: a(k2,k3),b(w1)
a=z26
call cpu_time(t1)
do n1=1,loop
call        t04(a,b,w1,k2,k3)
end do
call cpu_time(t2)
write(1,*)'t04:', t2-t1
end
subroutine ct05
use modk
integer:: a(k2,k3),b(w1)
a=z26
call cpu_time(t1)
do n1=1,loop
call        t05(a,b,k1,k2,k3)
end do
call cpu_time(t2)
write(1,*)'t05:', t2-t1
end
subroutine ct06
use modk
integer:: a(600),b(600*2)
a=z16
call cpu_time(t1)
do n1=1,loop
call        t06(a,b)
end do
call cpu_time(t2)
write(1,*)'t06:', t2-t1
end
subroutine ct07
use modk
integer:: a(20,30),b(600*2)
a=z26
call cpu_time(t1)
do n1=1,loop
call        t07(a,b)
end do
call cpu_time(t2)
write(1,*)'t07:', t2-t1
end
subroutine ct11
use modk
integer:: a(k1),b(k1+3)
a=z16
call cpu_time(t1)
do n1=1,loop
call        t11(a,b,k1)
end do
call cpu_time(t2)
write(1,*)'t11:', t2-t1
end
subroutine ct12
use modk
integer:: a(k1),b(w1)
a=z16
call cpu_time(t1)
do n1=1,loop
call        t12(a,b,k1,w1)
end do
call cpu_time(t2)
write(1,*)'t12:', t2-t1
end
subroutine ct13
use modk
integer:: a(k1),b(w1)
a=z16
call cpu_time(t1)
do n1=1,loop
call        t13(a,b,k1,w1)
end do
call cpu_time(t2)
write(1,*)'t13:', t2-t1
end
subroutine ct14
use modk
integer:: a(k2,k3),b(w1)
a=z26
call cpu_time(t1)
do n1=1,loop
call        t14(a,b,w1,k2,k3)
end do
call cpu_time(t2)
write(1,*)'t14:', t2-t1
end
subroutine ct15
use modk
integer:: a(k2,k3),b(w1)
a=z26
call cpu_time(t1)
do n1=1,loop
call        t15(a,b,k1,k2,k3)
end do
call cpu_time(t2)
write(1,*)'t15:', t2-t1
end
subroutine ct16
use modk
integer:: a(600),b(600*2)
a=z16
call cpu_time(t1)
do n1=1,loop
call        t16(a,b)
end do
call cpu_time(t2)
write(1,*)'t16:', t2-t1
end
subroutine ct17
use modk
integer:: a(20,30),b(600*2)
a=z26
call cpu_time(t1)
do n1=1,loop
call  t17(a,b)
end do
call cpu_time(t2)
write(1,*)'t17:', t2-t1
end

use mod
call set
call  cs01
call  cs02
call  cs03
call  cs04
call  cs05
call  cs06
call  cs07
call  cs08
call  cs09
call  cs10
call  cs11
call  cs12
call  cs13
call  cs14
call  cs15
call  cs16
call  cs17
call  cs18
call  cs19
call  cs20
call  ct01
call  ct02
call  ct03
call  ct04
call  ct05
call  ct06
call  ct07
call  ct11
call  ct12
call  ct13
call  ct14
call  ct15
call  ct16
call  ct17

print *,'pass'
end

