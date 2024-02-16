type ty
integer,pointer::aa(:)
integer,pointer::bb(:)
end type ty
type(ty):: obj
integer,target:: trg(5) = [1,2,3,5,4]
integer,target:: trg2(5) = [1,2,3,5,4]
         integer::k=2
         if (k==1) then
         obj%aa=>trg(1:3)
         obj%bb=>trg2(1::2)
         else
         obj%aa=>trg(1::2)
         obj%bb=>trg2(1:3)
         endif
if(loc(trg).ne.loc(obj%aa))print*,"101"
if(loc(trg2).ne.loc(obj%bb))print*,"102"
call sub1(obj%aa(:), obj%bb(:))
print*,"pass"
contains
subroutine sub1(dmy1,dmy2)
 integer,contiguous::dmy1(:)
 integer,contiguous::dmy2(:)

 if(loc(dmy1).eq.loc(obj%aa))print*,"103"
 if(loc(dmy2).ne.loc(obj%bb))print*,"104"
end subroutine sub1
end
