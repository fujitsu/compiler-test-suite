  class(*),pointer:: ptr
  allocate(ptr,source=10) 
  select type (asc=>ptr)
   class default
     print*,"401"
   type is (integer)             
     if(asc.ne.10)print*,"101"
  end select
  print*,"pass"
  end

