program main
type tt
 integer::i = 0
 character(len=8)::ch = 'xxxxxxxx'
end type

type, extends(tt) :: tt2
 integer :: j = 0
 type(tt) :: cmp
end type

class(tt),pointer :: obj
type(tt2) :: test

allocate(tt2::obj)

associate(a=>obj)
select type(a)
type is(tt2)
 a=tt2(1,'charac1',2,tt(24,'charac2'))
end select
end associate

if(obj%i/=1 .or. obj%ch/='charac1') then
 print*,'fail'
else
 if(same_type_as(obj,test) .eqv. .true.) print*,'pass'
end if
end
