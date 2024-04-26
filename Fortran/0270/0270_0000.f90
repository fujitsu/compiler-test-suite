 real*2 :: xx =1.5
 xx = abs(xx)
 if(xx /= 1.50)print*,"101"
 xx = xx+abs(xx)
 if(xx /= 3.00)print*,"102"
 xx = abs(15.5_2)
 if(xx /= 15.5)print*,"103"
 print*,"PASS"
end program
