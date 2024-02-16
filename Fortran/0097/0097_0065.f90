type ty
integer,pointer::aa(:)
end type ty
type(ty):: obj
allocate(obj%aa(10))
obj%aa = reshape([1,2,3,4,5,6,7,8,9,10],[10])
call sub1(obj%aa(:))
print*,"pass"
contains
subroutine sub1(dmy1)

 integer,contiguous::dmy1(:)
 if(loc(dmy1).ne.loc(obj%aa))print*,"103"
end subroutine sub1
end
