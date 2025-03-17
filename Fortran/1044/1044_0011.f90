call sub1
call sub2
call sub3
call sub4
print *,'pass'
end
module mod
integer :: i1=101,i2=102,i3=103,i4=104,i5=105,i6=106,i7=107,i8=108,i9=109,ia=110
integer :: iii=100
end module
module mod0
use mod
integer :: j1=201,j2=202,j3=203,j4=204,j5=205,j6=206,j7=207,j8=208,j9=200,ja=210
integer :: jjj=201
end module
module mod1
use mod,only:iii
use mod0,only:jjj
end module
module mod2
use mod1,only:jjj
end module

module mod2a
 use mod1,only:jjj
end module

subroutine sub1
use mod2,only:jjj
use mod2a,only:jjj
integer ::iii=300
if (iii/=300)write(6,*) "NG"
if (jjj/=201)write(6,*) "NG"
end
module kod
integer :: iii=100
integer :: i1=101,i2=102,i3=103,i4=104,i5=105,i6=106,i7=107,i8=108,i9=109,ia=110
end module

module kod0
use kod,only:iii
integer :: jjj=200
integer :: j1=201,j2=202,j3=203,j4=204,j5=205,j6=206,j7=207,j8=208,j9=200,ja=210
end module

module kod1
use kod,only:iii
use kod0,only:jjj
end module

module kod2
use kod1,only:jjj
end module

module kod2a
 use kod1,only:jjj
end module

subroutine sub2
use kod2,only:jjj
use kod2a,only:jjj
integer ::iii=300
if (iii/=300)write(6,*) "NG"
if (jjj/=200)write(6,*) "NG"
end

module nod
integer :: iii=100
integer :: i1=101,i2=102,i3=103,i4=104,i5=105,i6=106,i7=107,i8=108,i9=109,ia=110
end module

module nod0
integer :: jjj=200
integer :: j1=201,j2=202,j3=203,j4=204,j5=205,j6=206,j7=207,j8=208,j9=200,ja=210
end module

module nod1
use nod,only:iii
use nod0,only:jjj
use nod,only:iii
end module

module nod2
use nod1,only:jjj
use nod,only:iii
end module

module nod2a
 use nod1,only:jjj
use nod,only:iii
end module

subroutine sub3
use nod2,only:jjj
use nod2a,only:jjj
use nod,only:iii
if (iii/=100)write(6,*) "NG"
if (jjj/=200)write(6,*) "NG"
end
module fod
integer :: iii=100
integer :: i1=101,i2=102,i3=103,i4=104,i5=105,i6=106,i7=107,i8=108,i9=109,ia=110
end module

module fod0
integer :: jjj=200
integer :: j1=201,j2=202,j3=203,j4=204,j5=205,j6=206,j7=207,j8=208,j9=200,ja=210
end module

module fod1
use fod,only:iii
use fod0,only:jjj
use fod,only:v=>iii
end module

module fod2
use fod1,only:jjj
use fod,only:v=>iii
end module

module fod2a
 use fod1,only:jjj
use fod,only:v=>iii
end module

subroutine sub4
use fod2,only:jjj
use fod2a,only:jjj
use fod,only:v=>iii
integer ::iii=300
if (iii/=300)write(6,*) "NG"
if (v/=100)write(6,*) "NG"
if (jjj/=200)write(6,*) "NG"
end
