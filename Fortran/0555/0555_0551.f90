module mod1
type ty
contains
 procedure,nopass,private :: prc=>fun1
 procedure,nopass :: prc1=>fun2
 generic :: gen=>prc,prc1
end type
 
type,extends(ty) :: tty
contains
 procedure,nopass,private :: prc=>fun3
end type

class(ty),allocatable::mobj

contains
integer function fun1(dmy,d1)
CLASS(*)::dmy
integer::d1
class(*),allocatable::f1
allocate(integer::f1)
 if(sizeof(dmy)==4 .and. same_type_as(f1,dmy)) then
  select type(dmy)
   type is (integer)
    fun1=dmy+d1
  endselect
 else
  fun1=0
  print*,'101'
 endif
end function

logical function fun2(dmy)
CLASS(*)::dmy
select type(dmy)
 type is(logical)
 allocate(ty::mobj)
 if(sizeof(dmy)==4 .and. mobj%gen(5,0) == 5) then
  deallocate(mobj)
  allocate(tty::mobj)
  if(mobj%gen(5,0) /= 6) print*,'fail'
  fun2=dmy
 else
  fun2=.false.
 endif
endselect
end function

integer function fun3(dmy,d1)
CLASS(*)::dmy
integer::d1
select type(dmy)
 type is (integer)
 if(sizeof(dmy)==4) then
  fun3=dmy+1+d1
 else
  fun3=0
  print*,'103'
 endif
endselect
end function
end module

program main 
use mod1
type,extends(ty) :: deriv
contains
 procedure,nopass :: prc=>fun4
 generic :: gen => prc
end type

type con
 character::ch
 class(deriv),pointer::obj(:)
end type

interface
integer function fun4()
end function
end interface

integer::check
type(con) :: wrap
wrap%ch='y'
allocate(wrap%obj(2))
check = wrap%obj(1)%gen()
if(check/=1) then
 print*,'100'
else
 print*,'PASS'
endif
end

integer function fun4()
use mod1
type cont
 character::ch
 type(tty)::fobj(2,2,2,2)
end type

type(cont)::fwrap
fwrap%ch='y'
if(fwrap%fobj(1,1,1,1)%gen(.true.) .eqv. .true.) then
 fun4=1
else
 fun4=0
endif
end function
