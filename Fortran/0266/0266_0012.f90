integer :: i,j
integer::counter=0

do j = 1,4

 b1: block
  integer :: bb(j+1)
   do i=1,j+1
   bb(i) = i+1

   b2: block
    integer :: dd(j+2)
    dd(i) = i+2
    counter = counter+1
    if (i==j) exit b1
    bb(i) = dd(i)+1
   end block b2
   
  b3: block
    if (i/=j) exit b3
  end block b3
  end do
  bb(i) = bb(i)+1
 end block b1
end do

if(counter /= 10) print*,"101", counter
print*, "PASS"
end
