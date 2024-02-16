  complex,pointer:: cmp
  real,pointer :: ptr
  allocate(cmp)
  ptr=>cmp%re
  print*,Associated(ptr,cmp%re)
  print*,"pass"
       end

