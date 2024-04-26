integer :: i,j,k=2,counter=0

do j = 1,3
 b1: block
  integer :: bb(j+1)
   do i=1,j+1
    bb(i) = i+1
    b2: block
      integer :: dd(j+2)
      dd(i) = i+2
      counter = counter+1
      if (i==j) exit b1
      dd(i) = bb(i) + 1
    end block b2
  end do

  b3: block
   b4: block
    integer :: ff(k+2)
    ff = 3
    bb(i) = bb(i) + 1
    exit b3
   end block b4
   print*, "101"
  end block b3
 end block b1
end do
if(counter /= 6) print*,"102",counter
print*,"PASS"
end
