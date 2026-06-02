module mod0
integer ,bind(c) :: iii
type,bind(c) :: ty1
 integer :: vvv
end type
type(ty1) ,bind(c) :: vvv
end 

module mod
use mod0,only : ppp=>iii
use mod0,only : iii
contains
subroutine isub()
if (iii.ne.1) print *,'fail'
if (ppp.ne.1) print *,'fail'
end subroutine
subroutine isub2(jjj)
if (iii.ne.jjj) print *,'fail'
if (ppp.ne.jjj) print *,'fail'
end subroutine
end

module moda
use mod
end 
module modb
use moda
use mod
end 

use modb,only : vvv=>ppp
use mod
use moda,only : kkk=>ppp
use mod0,only : xxx=>vvv
iii=1
call isub()
call sub()
kkk=2
call isub2(kkk)
vvv=3
call isub2(3)
print *,"pass"
end

subroutine  sub()
use mod
iii=2
call isub2(iii)
end subroutine 
