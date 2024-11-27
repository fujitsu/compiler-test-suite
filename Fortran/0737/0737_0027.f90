type x
  integer,allocatable::x1(:)
end type
type(x),allocatable::z(:)
do 10 i=0,5
allocate (z(i))
if (size(z)/=i)write(6,*) "NG"
10 deallocate(z)
print *,'pass'
end

   

