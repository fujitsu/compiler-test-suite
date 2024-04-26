integer :: ii(3) = 2,i,j
integer :: count = 0

b1:block
d1:do i=1,4
a1:select case(ii(1))
 case (1)
  print*, "101"

 case (2)
  b2:block
   integer,allocatable::aa(:)
   allocate(aa(10))
   d2:do j=1,i+1
    aa = 100
    count = count + 1
    ii = 2
    if (i==j) exit a1
   end do d2
  end block b2
  if (i==j) print*, 103
 case (3)
  ii = 4

 case default
  print*, "103"
  if (i==j) exit b1
end select a1
end do d1

if(all(ii /= 2)) print*, "911", ii
if(count /= 10) print*, "912", count
print*, "PASS"
end block b1
end
