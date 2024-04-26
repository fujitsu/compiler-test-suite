type ty
integer::ii=1
end type
block
integer::ii=2
type(ty)::obj1
associate(ii=>ii+1)
block
type ty
integer ::ii
end type
type(ty)::obj1
obj1%ii=ii+1
if((obj1%ii)==4)print*,"1:pass"
end block

if((obj1%ii)==1)print*,"2:pass"
end associate
end block
end

