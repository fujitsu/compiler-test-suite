integer :: i,j

b1: block
do j = 1,4
 b2: block
  integer :: bb(j+1)
   do i=1,j+1
    bb(i) = i+1
    if (i==j) exit b1
   end do
   print*, "101"
 end block b2
 print*,"end of outer iter: ",j
end do
print*, "102"
end block b1
print*, "PASS"
end
