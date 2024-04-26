integer :: ii(3) = 2

b1:block
a1:select case(ii(1))
 case (1)
  print*, "101"

 case (2)
  ii = 3
  exit a1

 case (3)
  print*, "102"

 case default
  print*, "104"
  exit a1
end select a1

if(all(ii /= 3)) print*, "911"
print*, "PASS"
end block b1
end
