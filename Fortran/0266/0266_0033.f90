integer :: ii(3) = 3

b1:block
s1:select case(ii(1))
 case (1)
  print*, "101"

 case (2)
  ii = 3
  exit s1

 case (3)
  b2: block
   integer,allocatable::jj(:)
   allocate(jj(2))
   jj = 1
   s2:select case (jj(2))
    case (1)
     ii = 4
     jj = 2
     exit s1

    case (2)
     print*, "102"
   
    case default
     print*, "103"
     exit b2
   end select s2
   if(all(jj /= 2)) print*, "104"
  end block b2
  print*, "102"

 case default
  print*, "103"
end select s1

if(all(ii /= 4)) print*, "911"
end block b1
print*, "PASS"
end
