module mod1
type t1
 integer::i=0
 contains
 procedure,pass(pdmy)::prc1=>sub1
end type

type,extends(t1)::t2
 integer::j=0
 contains
  procedure,nopass::prc2=>sub2
  procedure,pass::prc3=>sub3
end type

integer::check=0

interface
subroutine sub1(pdmy)
 import t1
 class(t1)::pdmy
end subroutine

subroutine sub2(d1)
 integer::d1
end subroutine

subroutine sub3(pdmy)
import t2
class(t2)::pdmy
end subroutine
end interface
end module

program main
 use mod1
 type(t1)::act1(5,5,5,5,5)
 type(t2)::act2(5,5,5,5,5)

 act1(4,5,3,1,2)%i=23
 act2(5,4,3,2,1)%i=24

 call s(act1)
 call s(act2)

 contains
 subroutine s(obj)
  class(*)::obj(5,5,5,5,5)
  select type(obj)
  type is(t2)
   check=2
   call obj(5,4,3,2,1)%prc1()
   call obj(5,4,3,2,1)%prc2(4)
   call obj(5,4,3,2,1)%prc3()
  class is(t1)
   check=1
   call obj(4,5,3,1,2)%prc1()
  end select
 end subroutine
end program

subroutine sub1(pdmy)
 use mod1
 class(t1)::pdmy
 if(check==1) then
  if(sizeof(pdmy)==4) print*,'PASS1/4'
 else
  if(check==2 .and. sizeof(pdmy)==8) print*,'PASS2/4'
 endif
end subroutine

subroutine sub2(d1)
 use mod1
 integer::d1
 if(d1==4) print*,'PASS3/4'
end subroutine

subroutine sub3(pdmy)
 use mod1
 class(t2)::pdmy
 if(sizeof(pdmy)==8) print*,'PASS4/4'
end subroutine
