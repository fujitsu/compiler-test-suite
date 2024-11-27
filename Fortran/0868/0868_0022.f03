 class(*),pointer:: ptr
type ty
end type
  allocate(ptr,source=10) 
  select type (asc=>ptr)
   class default
     print*,"401"
   type is (integer)             
     if(asc.ne.10)print*,"101"
   type is (ty)             
  end select
  print*,"pass"
  end


