type ty
  real  :: it
  real  :: ita(10)
end type
type(ty),target::obj

type ty2
 real ,pointer :: ip=>obj%it
 real ,pointer :: ipa(:)=>obj%ita
end type
type(ty2)::obj2
if(associated(obj2%ip).neqv..true.)print*,"101"
if(associated(obj2%ipa).neqv..true.)print*,"102"
obj2%ipa =2
obj2%ip =12
if(any(obj2%ipa.ne.2))print*,"103"
if(obj2%ip.ne.12)print*,"104"
print*,"PASS"
end
