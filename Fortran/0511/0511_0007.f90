type ty1
end type ty1
class(ty1),allocatable::typ1(:),typ2(:)
allocate(typ1(1),typ2(1))
 select type (zzz=>typ1)
 class default
typ2=[zzz]
 associate(zzz=>typ1)
 select type (typ1)
class is(ty1)
typ2=[zzz]
 end select
typ2=[zzz]
 end associate
 end select
print *,'pass'
end
