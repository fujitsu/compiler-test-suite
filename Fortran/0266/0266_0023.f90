integer :: aa = 2,i,count=0
b1: block
integer :: ii(aa)
ii = 20
d1:   do j = 1,4
  b2: block
   integer :: jj(aa)
   d2:do i = 1,j+1
     jj = 10
      count = count+1
      if(i==j) exit d2
      if (i==j) print*,911
    end do d2
   end block b2
 end do d1
 end block b1
 if (count /= 10) print*, count
 200 print*,"PASS"
 end
