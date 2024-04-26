integer :: ii(3) = 3

b1:block
a1:select case(ii(1))
 case (1)
  print*, "101"

 case (2)
  ii = 2
  exit a1

 case (3)
  b2: block
   integer,allocatable::jj(:)
   allocate(jj(2))
   ii = 3
   jj = 1
   exit b1
  end block b2
  print*, "102"

 case default
  print*, "103"
  exit b1
end select a1

if(all(ii /= 3)) print*, "911"
end block b1
print*, "PASS"
end
