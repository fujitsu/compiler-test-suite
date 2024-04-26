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
type(tt) :: test2

allocate(tt2::obj)

associate(a=>obj,b=>test,c=>test2)
select type(a)
type is(tt2)
 c%i=23
 c%ch = 'charac_c'
 b%i=22
 b%ch = 'charac_b'
 b%j=12
 b%cmp%i=20
 b%cmp%ch = 'charac_x'
 a=tt2(1,'charac_a',2,c)
end select
end associate

if(obj%i/=1 .or. obj%ch/='charac_a') then
 print*,'fail'
else
 if(same_type_as(obj,test) .neqv. .true.) print*,101
 if(test%i/=22 .or. test%ch /= 'charac_b' .or. test%j/=12 .or. test%cmp%i/=20 &
    .or. test%cmp%ch/='charac_x') print*,102
 if(test2%i/=23 .or. test2%ch/='charac_c') print*,103
 print*,'pass'
end if
end
