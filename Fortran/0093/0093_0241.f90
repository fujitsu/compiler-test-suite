type ty
  complex,pointer:: cmp
  complex,pointer:: cmp2(:)
end type

type(ty) :: obj
real,pointer :: ptr
real,pointer :: ptr2(:)
allocate (obj%cmp)
allocate (obj%cmp2(2))
       ptr=>obj%cmp%re
       ptr2=>obj%cmp2%re
       print*,Associated(ptr,obj%cmp%re)
       print*,Associated(ptr2,obj%cmp2%re) 
       print*,"pass"
       end

