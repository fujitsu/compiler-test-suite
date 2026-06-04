call sub()
print *,'pass'
contains
subroutine sub()

integer,allocatable :: obj1(:)

allocate(obj1(5))
obj1 = 10

if (size( [(2),(3)] )/=2) print *,101
write(1, '(z16.16)') loc(obj1(1))
obj1 = [(2),(3)]
write(1, '(z16.16)') loc(obj1(1))
if (size(obj1)/=2) print *,200,size(obj1)
if (obj1(1)/=2) print *,201,obj1(1)
if (obj1(2)/=3) print *,202,obj1(2)
end subroutine
end
