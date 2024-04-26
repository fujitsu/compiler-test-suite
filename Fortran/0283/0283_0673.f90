type tt
 logical::l
 contains
 procedure,nopass :: pp => sub
 procedure,nopass :: pp2=> sub2
 generic :: gen => pp,pp2
end type

type,extends(tt)::tt2
 real::r
 contains
 procedure,nopass :: pp=>sub3
end type

interface
subroutine sub(dmy,dmy2)
 class(*)::dmy
 logical::dmy2

end subroutine

subroutine sub2(dmy,dmy2,dmy3)
 class(*)::dmy
 logical::dmy2
 real::dmy3
end subroutine

subroutine sub3(dmy,dmy2)
 class(*)::dmy
 logical::dmy2

end subroutine
end interface

type(tt)::tgt
type(tt2)::tgt2
integer :: i = 5
integer(8) :: i2 

tgt=tt(.true.)
tgt2=tt2(.false.,real(12))

associate(aa=>ptr(tgt))
 call aa%gen(i,aa%l)
end associate

associate(aa=>ptr(tgt2),bb=>i2)

bb=10
call aa%gen(bb,aa%l)
call aa%gen(bb,aa%l,tgt2%r)
end associate

print*,'pass'

contains

function ptr(dum)
 class(tt),pointer::ptr
 class(tt)::dum
 allocate(ptr,source=dum)
end function
end program

subroutine sub(dmy,dmy2)
 class(*)::dmy
 logical::dmy2
 if(sizeof(dmy)/=4) print*,'101'
 select type(dmy)
 type is(integer)
  if(dmy/=5 .or. dmy2 .neqv. .true.) print*,'201'
 end select
end subroutine

subroutine sub2(dmy,dmy2,dmy3)
 class(*)::dmy
 logical::dmy2
 real::dmy3
 if(sizeof(dmy)/=8) print*,'102'
 select type(dmy)
 type is(integer)
  if(dmy/=10 .or. dmy2 .neqv. .false. .or. dmy3/=real(12)) print*,'202'
 end select
end subroutine

subroutine sub3(dmy,dmy2)
 class(*)::dmy
 logical::dmy2
 if(sizeof(dmy)/=8) print*,'103'
 select type(dmy)
 type is(integer)
  if(dmy/=10 .or. dmy2 .neqv. .false.) print*,'203'
 end select
end subroutine
