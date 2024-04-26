type tt
 integer :: ii
end type

type,extends(tt) :: tt2
 real :: r
end type

type,extends(tt2) :: ttt3
 character(8) :: ch
end type

type(ttt3) :: src = ttt3(2,2.5,'a')
class(tt),allocatable :: alc,blc
class(tt2),allocatable :: clc
type(ttt3),allocatable :: dlc

allocate(alc,blc,clc,dlc,mold=src)
print*,'pass'

select type(alc)
type is(ttt3)
class default
 print*,101
end select

select type(blc)
type is(ttt3)
class default
 print*,101
end select

select type(clc)
type is(ttt3)
class default
 print*,101
end select

dlc%ii=3
end
