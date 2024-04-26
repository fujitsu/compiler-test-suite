program main
type tt
 integer::i
 character(len=8)::ch
end type

type(tt) :: obj

associate(a=>obj%i,b=>obj%ch)
 a=24
 b='charac'
end associate

if(obj%i/=24 .or. obj%ch/='charac') then
 print*,'fail'
else
 print*,'pass'
end if
end
