type ty
integer::ii=1
end type
block
integer::ii=2
type(ty)::obj1
associate(ii=>ii+1)
obj1%ii=ii
end associate
if((obj1%ii)==3)print*,"1:pass"
if(ii==2)print*,"2:pass"
end block
end

