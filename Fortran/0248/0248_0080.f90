type tt
 integer :: ii
end type

type,extends(tt) :: tt2
 real :: r
end type

integer :: x=9
type(tt2) :: src = tt2(2,2.5)
class(tt),allocatable :: alc,blc
class(tt2),allocatable :: clc

allocate(alc,blc,clc,mold=src,stat=x)
print*,'pass'

select type(alc)
type is(tt2)
if(x/=0) print*,102
class default
 print*,101
end select

select type(blc)
type is(tt2)
class default
 print*,101
end select

select type(clc)
type is(tt2)
class default
 print*,101
end select
end
