type ty
 integer::arr(2)
 character::ch(4)
end type
type(ty),parameter::obj(*) =[ty((/10,20/),['a','b','c','d']),ty((/30,40/),['e','f','g','h'])]
character,parameter::ar(*) = (obj(2)%ch)

if(size(obj) .EQ. size(ar)-2)then
print*,'Pass'
else
print*,'Fail'
endif
end
