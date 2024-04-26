integer :: ii(3) = 2
integer :: count = 0

b1:block
d1:do i=1,4
s1:select case(ii(1))
 case (1)
  print*, "101"

 case (2)
  a1: associate (a=>ii) 
   d2:do j=1,i+1
    count = count + 1
    ii = 2
    if (i==j) exit a1
    exit
   end do d2
  end associate a1

 case (3)
  ii = 4

 case default
  print*, "103"
end select s1
end do d1

if(all(ii /= 2)) print*, "911", ii
if(count /= 4) print*, "912", count
print*, "PASS"
end block b1
end
