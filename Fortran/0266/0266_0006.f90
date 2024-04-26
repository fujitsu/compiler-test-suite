integer::x = 0
b1:block
 integer,allocatable::jj(:)
 allocate(jj(3))
 x = 1
 b2:block
  integer,allocatable::ii(:)
  allocate(ii(2))
  x = 2
  exit b1
 end block b2
 x = 3
 print*, "101"
end block b1
if (x /= 2) print*, "102"
print*, "PASS"
end
