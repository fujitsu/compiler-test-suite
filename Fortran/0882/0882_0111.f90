program test

type ty1
   integer::ix0
   integer::ix1
 end type

type,extends(ty1):: ty2
   integer::ix2
   class (ty2), POINTER       :: ptr(:,:,:,:)
 end type

type  (ty2), TARGET        :: t2(2,2,2,2)
type  (ty2):: obj

t2%ix1=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16],[2,2,2,2])
obj%ptr=>t2
print *, " main -> obj%ptr(2,1,2,2)%ix1=", obj%ptr(2,1,2,2)%ix1

call sub(obj%ptr)

contains
subroutine sub(d1)
type(ty2) :: d1(2,2,2,2)
print *, " sub -> d1(2,1,2,2)%ix1=", d1(2,1,2,2)%ix1

if (any(d1%ix1/=reshape([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16],[2,2,2,2])))then
print *, " SUB Array Miss match"
endif

end subroutine
end program

