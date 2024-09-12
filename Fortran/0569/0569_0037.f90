type ty
  integer,pointer :: ptr
end type
type(ty)::obj, res
allocate(obj%ptr)
obj%ptr=55        
res=fun(obj)
if(res%ptr /=55)print*,101
print*,'PASS'
contains
pure function fun(pdmy)
     type(ty),value :: pdmy
     type(ty),allocatable :: alc
     type(ty)::fun
     allocate(alc,source=pdmy)
     fun=alc
   end function
  end

