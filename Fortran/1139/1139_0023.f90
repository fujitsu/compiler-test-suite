type ty                              !1)
  class(*),allocatable :: cptr(:)
end type
type(ty) :: obj1                     !2)
allocate(obj1%cptr(2),source="ABC")

select type(asc=>obj1%cptr)          !3)
  type is(character(len=*))          
  asc(1)(1:2)= "12"                  !4)
end select
print *,'sngg258k : pass'
end

