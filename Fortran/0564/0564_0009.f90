PROGRAM main
IMPLICIT NONE

TYPE ty
 integer::jj=70
 integer,allocatable::xx
END TYPE

type, extends(ty)::tn
  integer::kk=20
end type

class(ty),allocatable :: obj1(:)
type(tn) :: obj2(2)

allocate(obj1(2))

obj2(1)%xx = 30
obj2(2)%xx = 40
obj2(2)%jj = 80
obj2(1)%kk = 50
obj2(2)%kk = 60

obj1 = [tn(70,30,50),tn(80,40,60)]
select type(obj1)
    type is(tn)
        if(obj1(1)%xx .ne. 30) print*,"121"
        if(obj1(2)%xx .ne. 40) print*,"122"
        if(obj1(1)%kk .ne. 50) print*,"123",obj1(1)%kk
        if(obj1(2)%kk .ne. 60) print*,"124"
        if(obj2(1)%jj .ne. 70) print*,"125"
        if(obj2(2)%jj .ne. 80) print*,"126"
    class default
         print*,"125"
end select
print*,"PASS"
end
