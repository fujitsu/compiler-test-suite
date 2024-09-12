 type z
   integer:: z1
 end type
 type,extends(z):: y
   integer:: y1
 end type
 class(z),allocatable::v1(:),v2(:)
allocate ( v1(2))
v1%z1=1
v2=v1
if (v2(1)%z1/=1) print *,101
print *,'pass'
end
