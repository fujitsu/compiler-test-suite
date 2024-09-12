PROGRAM main
IMPLICIT NONE

TYPE ty
 integer::jj=70
 integer::xx
END TYPE

type, extends(ty)::tn
 integer::kk=20
end type

type tt
class(ty),allocatable :: obj1(:)
end type

type(tt)::objTT

allocate(objTT%obj1(3))

objTT%obj1 = [tn(70,30,50),tn(80,40,60)]

if(size(objTT%obj1) /= 2) print*, "101"
if(objTT%obj1(1)%xx .ne. 30) print*,"102"
if(objTT%obj1(2)%xx .ne. 40) print*,"103"

select type(x => objTT%obj1)
    type is(tn)
        if(x(1)%kk .ne. 50) print*,"123"
        if(x(2)%kk .ne. 60) print*,"124"
        print*,"PASS"
    class default
         print*,"125"
end select
end
