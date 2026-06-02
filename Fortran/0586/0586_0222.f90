module mod
integer,target :: t1=30
type ty1
integer ,pointer :: p1 =>NULL()
integer ,pointer :: p2 =>NULL()
integer ,pointer :: p22 =>NULL()
end type
integer ,pointer :: p3 =>NULL()
integer ,pointer :: p4 =>NULL()
integer ,pointer :: p5
integer ,pointer :: p6 /NULL()/
integer ,pointer :: p7 /NULL()/
integer ,pointer :: p11
integer ,pointer :: p12
integer ,pointer :: p13
integer::a,b,c
data p5 /NULL()/
data p11 ,a,b,c ,p12,p13 /NULL(),1,2,3,NULL(),NULL()/
interface
subroutine sub(t1)
  integer,target :: t1
  integer ,pointer :: p1 =>t1
  integer ,pointer :: p2 =>NULL()
end subroutine
function fun(t1)
 integer,target :: t1
 integer ,pointer :: p1 =>t1
 integer ,pointer :: p2 =>NULL()
end function
end interface
end

use mod
type(ty1)::obj
if(associated(obj%p1).neqv..false.)print*,"101"
if(associated(obj%p2).neqv..false.)print*,"101"
if(associated(obj%p22).neqv..false.)print*,"101"
if(associated(p4).neqv..false.)print*,"101"
if(associated(p5).neqv..false.)print*,"101"
if(associated(p6).neqv..false.)print*,"101"
if(associated(p7).neqv..false.)print*,"101"
if(associated(p11).neqv..false.)print*,"101"
if(associated(p12).neqv..false.)print*,"101"
if(associated(p13).neqv..false.)print*,"101"
if(associated(p3).neqv..false.)print*,"101"
obj%p1=>t1
obj%p2=>t1
obj%p22=>t1
print*,"PASS"
end

