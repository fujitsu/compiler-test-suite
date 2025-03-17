module mod
integer :: iii=100
end module

module mod0
use mod
integer :: jjj=101
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
integer ::iii=200
if (iii/=200)write(6,*) "NG"
if (jjj/=101)write(6,*) "NG"
end
call sub1
call sub2
call sub3
call sub4
print *,'pass'
end
module kod
integer :: iii=100
end module

module kod0
use kod,only:iii
integer :: jjj=101
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
integer ::iii=200
if (iii/=200)write(6,*) "NG"
if (jjj/=101)write(6,*) "NG"
end

module nod
integer :: iii=100
end module

module nod0
integer :: jjj=101
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
if (jjj/=101)write(6,*) "NG"
end
module fod
integer :: iii=100
end module

module fod0
integer :: jjj=101
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
integer ::iii=200
if (iii/=200)write(6,*) "NG"
if (v/=100)write(6,*) "NG"
if (jjj/=101)write(6,*) "NG"
end
