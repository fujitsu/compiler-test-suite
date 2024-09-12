class(*),allocatable::typ1(:),typ2(:)
allocate(typ1(2),mold=[1.0])
allocate(typ2(1),mold=["1223"])
 select type (zzz=>typ1)
 type is(real)
zzz=[1.0,2.0]
 associate(zzz=>typ1)
 select type (yyy=>typ2)
type is(character(*))
yyy=["1223"]
 end select
 end associate
 end select
print *,'pass'
end
