type a
 integer a1
end type
type(a)::b(0:9)
b(0)%a1=1
do i=2,9
  b(i)%a1=3
end do
print*,b(0)%a1
end
