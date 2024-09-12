type ty0
  type (ty1),pointer :: arrayb(:,:)
end type
type ty1
  real ::  array(512,512) 
  type(ty1) ,pointer :: aaa(:)
  real ::  bbb(512,512) 
end type
print *,'pass'
end
