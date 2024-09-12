module mod1
type ty1(i)
integer,kind::i=1
character(i) :: chk
character(i) :: ch(i)
end type
type,extends(ty1):: ty
character(i) :: cc
end type
end
module mod
use mod1
contains
recursive function afun(aaa) result(ii)
integer::ii,jj
type(ty1(2)):: aaa
type(ty(2)) ::ccc
aaa%chk = 'xy'
aaa%ch = 'ab'
if (aaa%i .ne. 2) print *,'err1'
if (aaa%ch(2) .ne. 'ab') print *,'err2'
if (aaa%chk .ne. 'xy') print *,'err3'
if (ubound(aaa%ch,1) .ne. 2) print *,'err4'
entry bfun(ccc) result(jj)
ccc%cc = 'xc'
ccc%ch = 'ab'
ccc%chk = 'xy'
jj = 10
if (ccc%i.ne.2) print *,'err5'
if (ccc%cc .ne.'xc') print *,'err6'
end function
end

use mod 
type(ty(2)):: ccc 
integer::c
c=bfun(ccc)
if (ccc%i.ne.2) print *,'err7'
if (ccc%cc .ne. 'xc') print *,'err8'
if (ccc%ch(2) .ne. 'ab') print *,'err9',ccc%chk
if (ccc%chk .ne. 'xy') print *,'err10'
if (c .ne. 10) print *,'err11'
print*,'PASS'
end

