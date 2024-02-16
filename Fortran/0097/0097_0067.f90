type ty
integer,pointer::aa(:)
end type ty
type(ty):: obj
integer,target:: trg(5) = [1,2,3,5,4]
         integer::k=2
         if (k==1) then
         obj%aa=>trg(1:3)
         else
         obj%aa=>trg(1::2)
         endif
if(loc(trg).ne.loc(obj%aa))print*,"101"
call sub1(obj%aa(:))
print*,"pass"
contains
subroutine sub1(dmy1)
 integer,contiguous::dmy1(:)

 if(loc(dmy1).eq.loc(obj%aa))print*,"102"
end subroutine sub1
end
