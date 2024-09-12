type ty(k1,k2)
Integer ,kind::k1,k2=5
character(LEN=k2)::ch
integer::arr(k1:k2)
end type

type ty1(k1)
integer,kind::k1 
type(ty(2))::ty_obj
end type

character(len=2),parameter::ch = 'HI'
type(ty(2))::tyobj
TYPE(ty1(2))::ty1_obj(2)
tyobj= ty(2,5)('Hi',(/10,1,(LEN(ch)+2),2/))

ty1_obj = [ty1(2)(tyobj) , ty1(2)(ty(2)('Hi',100))]

if(ty1_obj(1)%ty_obj%arr(2) .EQ. 10 .and.  ty1_obj(2)%ty_obj%arr(5) .EQ. 100)then
  print*, 'PASS'
else
  print*,'FAIL'
endif
end
           
