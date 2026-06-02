call test01()
call test02()
call test03()
print *,'pass'
end

module mmm
interface
 function sfun()
 end function
end interface
contains
 function vfun()
vfun=1
 entry vfun2()
 end function
end 

module mod
use mmm
type ty1a
 procedure(ifun),nopass,pointer :: ip
 procedure(ifun),nopass,pointer :: ip2
 procedure(ifun),nopass,pointer :: ip3
 procedure(sin),nopass,pointer :: ip4
 procedure(real),nopass,pointer :: ip5
 procedure(sfun),nopass,pointer :: ip6
 procedure(vfun),pointer,nopass :: ip7
 procedure(vfun2),pointer,nopass :: ip8
end type 
type(ty1a) :: saa
contains
function ifun(i)
ifun=i
end function
function jfun(i)
jfun=i+10
end function
function kfun(i,j)
kfun=i+j
end function
end

subroutine subbb()
use mod
type(ty1a) :: sbb
type ty2a
 procedure(ifun),pointer,nopass :: ip
 procedure(ifun),pointer,nopass :: ip2
 procedure(ifun),pointer,nopass :: ip3
 procedure(sin),pointer,nopass :: ip4
 procedure(real),nopass,pointer :: ip5
 procedure(sfun),nopass,pointer :: ip6
 procedure(vfun),nopass,pointer :: ip7
 procedure(vfun2),pointer,nopass :: ip8
end type
type(ty2a) :: scc 
saa=sbb
end
subroutine test01()
use mod
type ty1
 procedure(ifun),pointer,nopass :: ip
 procedure(ifun),pointer,nopass :: ip2
 procedure(ifun),pointer,nopass :: ip3
end type 
type (ty1) :: pp
pp=ty1(ifun,ifun,ifun)
i1=pp%ip(1)
if (i1.ne.1) print *,'fail'
i1=pp%ip2(2)
if (i1.ne.2) print *,'fail'
i1=pp%ip3(3)
if (i1.ne.3) print *,'fail'
end 

subroutine test02()
use mod
type ty1
 procedure(ifun),pointer,nopass :: ip
 procedure(jfun),pointer,nopass :: ip2
 procedure(kfun),pointer,nopass :: ip3
end type
type (ty1) :: pp
pp=ty1(ifun,jfun,kfun)
i1=pp%ip(1)
if (i1.ne.1) print *,'fail'
i1=pp%ip2(2)
if (i1.ne.12) print *,'fail'
i1=pp%ip3(3,4)
if (i1.ne.7) print *,'fail'
end

subroutine test03()
use mod
type ty1
 procedure(ifun),pointer,nopass :: ip
 procedure(jfun),pointer,nopass :: ip2
 procedure(kfun),pointer,nopass :: ip3=>null()
 procedure(ifun),pointer,nopass :: i1,i2,i3,i4,i5,i6,i7,i8=>null(),i9=>null()
end type
type ty2
 procedure(ifun),pointer,nopass :: ip
 procedure(jfun),pointer,nopass :: ip2
 procedure(kfun),pointer,nopass :: ip3=>null()
 procedure(ifun),pointer,nopass :: i1,i2,i3,i4,i5,i6,i7,i8,i9
 procedure(ifun),pointer,nopass :: j1,j2,j3,j4,j5,j6,j7,j8,j9
 procedure(ifun),pointer,nopass :: k1,k2,k3,k4,k5,k6,k7,k8,k9
 procedure(ifun),pointer,nopass :: r1,r2,r3,r4,r5,r6,r7,r8,r9
 procedure(ifun),pointer,nopass :: e1,e2,e3,e4,e5,e6,e7,e8,e9
 procedure(ifun),pointer,nopass :: w1,w2,w3,w4,w5,w6,w7,w8,w9
 procedure(ifun),pointer,nopass :: q1,q2,q3,q4,q5,q6,q7,q8,q9
 procedure(ifun),pointer,nopass :: a1,a2,a3,a4,a5,a6,a7,a8,a9
 procedure(ifun),pointer,nopass :: x1,x2,x3,x4,x5,x6,x7,x8,x9
 procedure(ifun),pointer,nopass :: v1,v2,v3,v4,v5,v6,v7,v8,v9
type (ty2),pointer :: sss=>NULL()
end type
type tya
 type (ty1) :: pp
end type
 type (ty2) :: pp
type(tya),pointer  :: xxx
allocate(xxx)
xxx%pp%ip3=>kfun
xxx%pp=ty1(ifun,jfun,kfun  ,ifun,ifun,ifun,ifun,ifun,ifun,ifun,i8=ifun,i9=ifun)
xxx%pp=ty1(ifun,jfun,kfun  ,ifun,ifun,ifun,ifun,ifun,ifun,ifun,i9=ifun,i8=ifun)
xxx%pp=ty1(ifun,jfun,kfun  ,ifun,ifun,ifun,ifun,ifun,ifun,ifun,i9=ifun)
i1=xxx%pp%ip(1)
if (i1.ne.1) print *,'fail'
i1=xxx%pp%ip2(2)
if (i1.ne.12) print *,'fail'
i1=xxx%pp%ip3(3,4)
if (i1.ne.7) print *,'fail'
end

