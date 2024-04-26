type x
  integer,allocatable::array(:)
end type
type(x),allocatable:: alloc_var(:)
type(x)            :: src_var
allocate(src_var%array(3))
src_var%array(:)=1

allocate( alloc_var(2) , source=src_var)

allocate( alloc_var(2)%array(3) ,stat=k)
if (k==0) print *,101

alloc_var(2)%array(:) = 2 

print *,'pass'
end

