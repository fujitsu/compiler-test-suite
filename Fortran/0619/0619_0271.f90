module m1
  type ty
  end type
  type ty2
    type(ty),allocatable:: a
  end type
  type (ty2):: v
end 
print *,'pass'
end
  
