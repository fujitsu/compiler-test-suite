program main
type tt
 integer,allocatable::alc
 integer::j=3
end type

type(tt),allocatable :: obj

allocate(obj)
allocate(obj%alc,source=obj%j)
associate(a=>obj)
 if(a%alc/=a%j) print*,101
end associate

if(obj%alc==obj%j) print*,'pass'
end
