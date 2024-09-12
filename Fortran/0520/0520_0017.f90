subroutine s
type x
   integer,allocatable::x1
end type
type (x),allocatable::v1(:),v2(:)
v1=v2
end
print *,'pass'
end

