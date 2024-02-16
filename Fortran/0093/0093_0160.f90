implicit none 

  integer:: i = 1
  Real::sum = 0
  complex::cmp=(2.2,10.5)
  do concurrent (i = 1:int(cmp%im):int(cmp%re)) 
     sum=sum+i 
  end do 
  if(sum .ne. 25) print*,101
  PRINT*,"PASS"
end
