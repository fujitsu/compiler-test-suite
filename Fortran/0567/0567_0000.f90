module mod1
type ty(l1)
integer,kind ::l1 = 3
character(len = 3)::cc
end type
type ty1(l)
integer,kind ::l = 2
integer::arr(l)      
character(l*l) :: ch(l)
type(ty(3))::tyobj
end type
end
module mod
use mod1
contains
recursive function afun(aaa) result(ii)
integer::ii,jj
type(ty1(3)):: aaa
type(ty(2))::ccc
aaa%arr = 4
aaa%ch = 'b'
ii = aaa%arr(1)
if (aaa%l .ne.3) print *,'err1'
if (ubound(aaa%arr,1) .ne.3) print *,'err2'
if (len(aaa%ch) .ne.9) print *,'err3'
if (aaa%ch(1) .ne.'b') print *,'err4'
if (aaa%arr(1) .ne.4) print *,'err5'
entry bfun(ccc) result(jj)
ccc%cc = 'xyz'
jj = 10
if (ccc%l1.ne.2) print *,'err6'
if (ccc%cc .ne.'xyz') print *,'err7'
end function
end

use mod
type(ty(2)):: ccc
integer::c
c=bfun(ccc)
if (ccc%l1 .ne.2) print *,'err8'
if (len(ccc%cc) .ne. 3) print *,'err9'
if (ccc%cc .ne.'xyz') print *,'err10'
if (c .ne. 10) print *,'err11'
print *,'pass'
end

