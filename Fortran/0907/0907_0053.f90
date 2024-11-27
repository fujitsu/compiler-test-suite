 subroutine s1
 type ty
  integer:: a1
 end type

 type(ty),allocatable :: obj(:)[:]
 type(ty),allocatable :: obj2(:)[:,:]
 call move_alloc(obj,obj2)
 end
 call s1
 end

