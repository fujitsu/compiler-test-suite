type ty
integer,pointer::aa(:)
integer,pointer::bb(:)
end type ty
type(ty):: obj
integer::k =1
allocate(obj%aa(10))
allocate(obj%bb(10))
obj%aa = reshape([1,2,3,4,5,6,7,8,9,10],[10])
obj%bb = reshape([1,2,3,4,5,6,7,8,9,10],[10])
call sub1(obj%aa(k:10:k), obj%bb(1:10:k))
if(any(obj%aa /= [11,12,13,14,15,16,17,18,19,20]))print*,"101"
if(any(obj%bb /= [11,12,13,14,15,16,17,18,19,20]))print*,"102"
print*,"pass"
contains
subroutine sub1(dmy1,dmy2)
integer::dmy1(10)
integer,contiguous::dmy2(:)
 if(loc(dmy1).ne.loc(obj%aa))print*,"103"
 if(loc(dmy2).ne.loc(obj%bb))print*,"104",dmy2
 dmy2 = [11,12,13,14,15,16,17,18,19,20]
 dmy1 = [11,12,13,14,15,16,17,18,19,20]
end subroutine sub1
end
