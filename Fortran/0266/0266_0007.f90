b1:block
 integer,allocatable::jj(:)
 allocate(jj(3))
 jj = 1
 b2:block
  integer,allocatable::ii(:)
  allocate(ii(2))
  jj = 2
  exit b2

  b3:block
   jj = 3
  end block b3
  print*, "101"
 end block b2

 if(all(jj /= 2)) print*, "102"
end block b1

print*, "PASS"
end
